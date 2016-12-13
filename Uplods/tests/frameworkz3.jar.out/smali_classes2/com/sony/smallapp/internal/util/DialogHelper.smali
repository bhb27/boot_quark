.class public Lcom/sony/smallapp/internal/util/DialogHelper;
.super Ljava/lang/Object;
.source "DialogHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeWindowTypeIfNeeded(Landroid/view/Window;Landroid/content/Context;)V
    .locals 1
    .param p0, "w"    # Landroid/view/Window;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-static {p1}, Lcom/sony/smallapp/internal/util/DialogHelper;->isSmallAppSubWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const/16 v0, 0xbb5

    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    .line 26
    :cond_0
    return-void
.end method

.method public static isSmallAppSubWindow(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 29
    move-object v0, p0

    .line 30
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    :goto_0
    instance-of v3, v0, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_0

    .line 32
    instance-of v3, v0, Lcom/sony/smallapp/AbstractSmallApplication;

    if-eqz v3, :cond_1

    .line 33
    const/4 v2, 0x1

    .line 41
    :cond_0
    return v2

    .line 35
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 38
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0    # "ctx":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "ctx":Landroid/content/Context;
    goto :goto_0
.end method
