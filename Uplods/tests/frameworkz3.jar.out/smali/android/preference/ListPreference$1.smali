.class Landroid/preference/ListPreference$1;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Landroid/preference/ListPreference;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Landroid/preference/ListPreference$1;->this$0:Landroid/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 267
    iget-object v0, p0, Landroid/preference/ListPreference$1;->this$0:Landroid/preference/ListPreference;

    # setter for: Landroid/preference/ListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Landroid/preference/ListPreference;->access$002(Landroid/preference/ListPreference;I)I

    .line 273
    iget-object v0, p0, Landroid/preference/ListPreference$1;->this$0:Landroid/preference/ListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 274
    iget-object v0, p0, Landroid/preference/ListPreference$1;->this$0:Landroid/preference/ListPreference;

    # getter for: Landroid/preference/ListPreference;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/preference/ListPreference;->access$100(Landroid/preference/ListPreference;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/preference/ListPreference$1$1;

    invoke-direct {v1, p0}, Landroid/preference/ListPreference$1$1;-><init>(Landroid/preference/ListPreference$1;)V

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    return-void
.end method
