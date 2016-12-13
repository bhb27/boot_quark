.class Landroid/widget/Toast$TN$3;
.super Ljava/lang/Object;
.source "Toast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast$TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Toast$TN;


# direct methods
.method constructor <init>(Landroid/widget/Toast$TN;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Landroid/widget/Toast$TN$3;->this$0:Landroid/widget/Toast$TN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Landroid/widget/Toast$TN$3;->this$0:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->handleOffset()V

    .line 355
    return-void
.end method
