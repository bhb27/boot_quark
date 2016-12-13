.class Landroid/view/ViewRootImpl$HighContrastTextManager$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl$HighContrastTextManager;->onHighTextContrastStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/ViewRootImpl$HighContrastTextManager;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl$HighContrastTextManager;)V
    .locals 0

    .prologue
    .line 7005
    iput-object p1, p0, Landroid/view/ViewRootImpl$HighContrastTextManager$1;->this$1:Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 7009
    iget-object v0, p0, Landroid/view/ViewRootImpl$HighContrastTextManager$1;->this$1:Landroid/view/ViewRootImpl$HighContrastTextManager;

    iget-object v0, v0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 7012
    iget-object v0, p0, Landroid/view/ViewRootImpl$HighContrastTextManager$1;->this$1:Landroid/view/ViewRootImpl$HighContrastTextManager;

    iget-object v0, v0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 7013
    return-void
.end method
