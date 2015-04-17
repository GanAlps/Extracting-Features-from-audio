/**
 * DefaultCompositeNode.h Header File
 * REpresents a series mar system.  This should be the other examp,e
 * of an aggregate marwidget.  It should represent a collection of
 * MarSystemNodest.
 * All That remains is determining how to draw a SeriesNode on
 * the MarCanvas.  A SeriesNode does not need the pixmaps of it's
 * children the same way that a 
 */

#ifndef DEFAULTCOMPOSITENODE_H
#define DEFAULTCOMPOSITENODE_H
#include "CompositeNode.h"
#include "MarSystemNodeFactory.h"

class DefaultCompositeNode:public CompositeNode
{

  Q_OBJECT

 public:
  DefaultCompositeNode(QString name,QWidget* parent);
  DefaultCompositeNode(MarSystem* msys,QWidget* parent);

  virtual bool append(MarSystemNode* newWidget);
  virtual bool insert(int index,MarSystemNode* newWidget);
  virtual bool insert(MarSystemNode* before, MarSystemNode* newWidget);
  virtual QWidget* getChildrenCanvas();
  void drawAllWidgets();

  public slots:
    void handleChildResize(int x,int y,int w,int h);
  
 signals:
  void resized(int x,int y,int w,int h);

 protected:
  virtual void resizeEvent(QResizeEvent* event);
  virtual void paintEvent(QPaintEvent* event);
  virtual void dragEnterEvent(QDragEnterEvent *event);
  virtual void dragMoveEvent(QDragMoveEvent *event);
  virtual void dropEvent(QDropEvent *event);

};
#endif //DefaultCompositeNODE_H
