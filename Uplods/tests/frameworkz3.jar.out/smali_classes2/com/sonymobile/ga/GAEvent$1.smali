.class final Lcom/sonymobile/ga/GAEvent$1;
.super Ljava/lang/Object;
.source "GAEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/ga/GAEvent;
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
        "Lcom/sonymobile/ga/GAEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonymobile/ga/GAEvent;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 76
    new-instance v0, Lcom/sonymobile/ga/GAEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/ga/GAEvent;-><init>(Landroid/os/Parcel;Lcom/sonymobile/ga/GAEvent$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/sonymobile/ga/GAEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonymobile/ga/GAEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sonymobile/ga/GAEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 81
    new-array v0, p1, [Lcom/sonymobile/ga/GAEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/sonymobile/ga/GAEvent$1;->newArray(I)[Lcom/sonymobile/ga/GAEvent;

    move-result-object v0

    return-object v0
.end method