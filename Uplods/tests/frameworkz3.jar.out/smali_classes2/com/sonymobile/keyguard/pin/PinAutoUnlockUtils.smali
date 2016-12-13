.class public Lcom/sonymobile/keyguard/pin/PinAutoUnlockUtils;
.super Ljava/lang/Object;
.source "PinAutoUnlockUtils.java"


# static fields
.field public static final AUTO_UNLOCKING_PIN_LENGTH:I = 0x4

.field public static final IS_USING_AUTO_UNLOCK_KEY:Ljava/lang/String; = "somc.lockscreen_type_is_pin_and_exactly_4_digits"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static activateOrDeactivate(Landroid/content/ContentResolver;ILjava/lang/String;)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "quality"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "isUsingFeature":Z
    const/high16 v1, 0x20000

    if-eq p1, v1, :cond_0

    const/high16 v1, 0x30000

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 64
    const/4 v0, 0x1

    .line 66
    :cond_1
    const-string v2, "somc.lockscreen_type_is_pin_and_exactly_4_digits"

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    const/4 v3, -0x2

    invoke-static {p0, v2, v1, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 68
    return-void

    .line 66
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
