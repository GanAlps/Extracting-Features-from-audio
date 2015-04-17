/***************************************************/
/*! \class Socket
    \brief STK TCP socket client/server class.

    This class provides a uniform cross-platform
    TCP socket client or socket server interface.
    Methods are provided for reading or writing
    data buffers to/from connections.  This class
    also provides a number of static functions for
    use with external socket descriptors.

    The user is responsible for checking the values
    returned by the read/write methods.  Values
    less than or equal to zero indicate a closed
    or lost connection or the occurence of an error.

    by Perry R. Cook and Gary P. Scavone, 1995 - 2002.
*/
/***************************************************/

#include "Socket.h"

#ifndef WIN32

#include <sys/socket.h>
#include <sys/types.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <unistd.h>
#include <fcntl.h>
#include <netinet/in.h>

#else

#include <Winsock2.h>

#endif

using namespace Marsyas;

Socket :: Socket( int port )
{
  soket = -1;
  server = true;
  poort = port;

  // Create a socket server.
#if defined(MARSYAS_WIN32)  // windoze-only stuff
  WSADATA wsaData;
  WORD wVersionRequested = MAKEWORD(1,1);

  WSAStartup(wVersionRequested, &wsaData);
  if (wsaData.wVersion != wVersionRequested) {
    sprintf( msg, "Socket: Incompatible Windows socket library version!" );
  }
#endif

  // Create the server-side socket
  soket = ::socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
  if (soket < 0) {
    sprintf(msg, "Socket: Couldn't create socket server!");
  }

  struct sockaddr_in mysocket;
  mysocket.sin_family=AF_INET;
  mysocket.sin_addr.s_addr=INADDR_ANY;
  mysocket.sin_port=htons( port );

  // Bind socket to the appropriate port and interface (INADDR_ANY)
  if (bind(soket, (struct sockaddr *)&mysocket, sizeof(mysocket)) < 0) {
    sprintf(msg, "Socket: Couldn't bind socket!");
  }

  // Listen for incoming connection(s)
  if ( listen(soket, 1) < 0 ) {
    sprintf(msg, "Socket: Couldn't start server listening!");
  }
}

Socket :: Socket(int port, const char *hostname )
{
  soket = -1;
  server = false;
  poort = port;

#if defined(MARSYAS_WIN32)  // windoze-only stuff
  WSADATA wsaData;
  WORD wVersionRequested = MAKEWORD(1,1);

  WSAStartup(wVersionRequested, &wsaData);
  if (wsaData.wVersion != wVersionRequested) {
    sprintf( msg, "Socket: Incompatible Windows socket library version!" );
  }
#endif

  // Create a socket client connection.
  connect( port, hostname );
}

Socket :: ~Socket()
{
#if (defined(MARSYAS_IRIX) || defined(MARSYAS_CYGWIN) || defined(MARSYAS_MACOSX))

  
  ::close( soket );

#elif defined(MARSYAS_WIN32)

  ::closesocket( soket );
  WSACleanup();

#endif
}

int Socket :: connect( int port, const char *hostname )
{
  // This method is for client connections only!
  if ( server == true ) return -1;

  // Close an existing connection if it exists.
  if ( isValid( soket ) ) this->close();

  // Create the client-side socket
  soket = ::socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
  if (soket < 0) {
    sprintf(msg, "Socket: Couldn't create socket client!");
  }

  struct hostent *hostp;
  if ( (hostp = gethostbyname(hostname)) == 0 ) {
    sprintf(msg, "Socket: unknown host (%s)!", hostname);
  }

  // Fill in the address structure
  struct sockaddr_in server_address;
  server_address.sin_family = AF_INET;
  memcpy((void *)&server_address.sin_addr, hostp->h_addr, hostp->h_length);
  server_address.sin_port = htons(port);

  // Connect to the server
  if ( ::connect(soket, (struct sockaddr *)&server_address,
                 sizeof(server_address) ) < 0) {
    sprintf(msg, "Socket: Couldn't connect to socket server!");
  }

  return soket;
}

int Socket :: socket( void ) const
{
  return soket;
}

int Socket :: port( void ) const
{
  return poort;
}

int Socket :: accept( void )
{
  if ( server )
    return ::accept( soket, NULL, NULL );
  else
    return -1;
}

bool Socket :: isValid( int socket )
{
  return socket != -1;
}

void Socket :: setBlocking( int socket, bool enable )
{
  if ( !isValid( socket ) ) return;

#if (defined(MARSYAS_IRIX) || defined(MARSYAS_CYGWIN) || defined(MARSYAS_LINUX) || defined(MARSYAS_MACOSX))

  int tmp = ::fcntl(socket, F_GETFL, 0);
  if ( tmp >= 0 )
    tmp = ::fcntl( socket, F_SETFL, enable ? (tmp &~ O_NONBLOCK) : (tmp | O_NONBLOCK) );

#elif defined(MARSYAS_WIN32)

  unsigned long non_block = !enable;
  ioctlsocket( socket, FIONBIO, &non_block );

#endif
}

void Socket :: close( void )
{
  if ( !isValid( soket ) ) return;
  this->close( soket );
  soket = -1;
}

void Socket :: close( int socket )
{
  if ( !isValid( socket ) ) return;

#if (defined(MARSYAS_IRIX) || defined(MARSYAS_CYGWIN) || defined(MARSYAS_MACOSX))

  ::close( socket );

#elif defined(MARSYAS_WIN32)

  ::closesocket( socket );

#endif
}

int Socket :: writeBuffer(const void *buffer, long bufferSize, int flags )
{
  if ( !isValid( soket ) ) return -1;
  return send( soket, (const char *)buffer, bufferSize, flags );
}

int Socket :: writeBuffer(int socket, const void *buffer, long bufferSize, int flags )
{
  if ( !isValid( socket ) ) return -1;
  return send( socket, (const char *)buffer, bufferSize, flags );
}

int Socket :: readBuffer(void *buffer, long bufferSize, int flags )
{
  if ( !isValid( soket ) ) return -1;
  return recv( soket, (char *)buffer, bufferSize, flags );
}

int Socket :: readBuffer(int socket, void *buffer, long bufferSize, int flags )
{
  if ( !isValid( socket ) ) return -1;
  return recv( socket, (char *)buffer, bufferSize, flags );
}
