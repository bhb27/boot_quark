.class final Lcom/sonymobile/enterprise/apninfo/ApnInfo$1;
.super Ljava/lang/Object;
.source "ApnInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/enterprise/apninfo/ApnInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sonymobile/enterprise/apninfo/ApnInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonymobile/enterprise/apninfo/ApnInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 228
    new-instance v0, Lcom/sonymobile/enterprise/apninfo/ApnInfo;

    invoke-direct {v0, p1}, Lcom/sonymobile/enterprise/apninfo/ApnInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/sonymobile/enterprise/apninfo/ApnInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonymobile/enterprise/apninfo/ApnInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sonymobile/enterprise/apninfo/ApnInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 232
    new-array v0, p1, [Lcom/sonymobile/enterprise/apninfo/ApnInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/sonymobile/enterprise/apninfo/ApnInfo$1;->newArray(I)[Lcom/sonymobile/enterprise/apninfo/ApnInfo;

    move-result-object v0

    return-object v0
.end method