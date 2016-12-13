.class Landroid/preference/ListPreference$1$1;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/ListPreference$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/preference/ListPreference$1;


# direct methods
.method constructor <init>(Landroid/preference/ListPreference$1;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Landroid/preference/ListPreference$1$1;->this$1:Landroid/preference/ListPreference$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 277
    iget-object v1, p0, Landroid/preference/ListPreference$1$1;->this$1:Landroid/preference/ListPreference$1;

    iget-object v1, v1, Landroid/preference/ListPreference$1;->this$0:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 278
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 281
    :cond_0
    return-void
.end method
