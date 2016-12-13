.class public Lcom/sonymobile/enterprise/smime/ParcelablePrivateKey;
.super Ljava/lang/Object;
.source "ParcelablePrivateKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonymobile/enterprise/smime/ParcelablePrivateKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mPrivateKey:Ljava/security/PrivateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/sonymobile/enterprise/smime/ParcelablePrivateKey$1;

    invoke-direct {v0}, Lcom/sonymobile/enterprise/smime/ParcelablePrivateKey$1;-><init>()V

    sput-object v0, Lcom/sonymobile/enterprise/smime/ParcelablePrivateKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    iput-object v0, p0, Lcom/sonymobile/enterprise/smime/ParcelablePrivateKey;->mPrivateKey:Ljava/security/PrivateKey;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0
    .param p1, "pk"    # Ljava/security/PrivateKey;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonymobile/enterprise/smime/ParcelablePrivateKey;->mPrivateKey:Ljava/security/PrivateKey;

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonymobile/enterprise/smime/ParcelablePrivateKey;->mPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/enterprise/smime/ParcelablePrivateKey;->mPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 54
    return-void
.end method
