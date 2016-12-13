.class final Landroid/view/ViewRootImpl$HighContrastTextManager;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HighContrastTextManager"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 2

    .prologue
    .line 6998
    iput-object p1, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6999
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isHighTextContrastEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHighContrastText:Z

    .line 7000
    return-void
.end method


# virtual methods
.method public onHighTextContrastStateChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 7003
    iget-object v1, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v1, Landroid/view/View$AttachInfo;->mHighContrastText:Z

    .line 7005
    new-instance v0, Landroid/view/ViewRootImpl$HighContrastTextManager$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$HighContrastTextManager$1;-><init>(Landroid/view/ViewRootImpl$HighContrastTextManager;)V

    .line 7015
    .local v0, "callbackImpl":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 7016
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 7020
    :goto_0
    return-void

    .line 7018
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
