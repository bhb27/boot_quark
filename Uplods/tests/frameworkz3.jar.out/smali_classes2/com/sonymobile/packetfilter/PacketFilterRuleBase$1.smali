.class final Lcom/sonymobile/packetfilter/PacketFilterRuleBase$1;
.super Ljava/lang/Object;
.source "PacketFilterRuleBase.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
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
        "Lcom/sonymobile/packetfilter/PacketFilterRuleBase;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 63
    new-instance v0, Lcom/sonymobile/packetfilter/PacketFilterRuleBase;

    invoke-direct {v0}, Lcom/sonymobile/packetfilter/PacketFilterRuleBase;-><init>()V

    .line 64
    .local v0, "rule":Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonymobile/packetfilter/PacketFilterRuleBase;->mPackageName:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonymobile/packetfilter/PacketFilterRuleBase;->mURL:Ljava/lang/String;

    .line 66
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/sonymobile/packetfilter/PacketFilterRuleBase$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonymobile/packetfilter/PacketFilterRuleBase;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 70
    new-array v0, p1, [Lcom/sonymobile/packetfilter/PacketFilterRuleBase;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/sonymobile/packetfilter/PacketFilterRuleBase$1;->newArray(I)[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;

    move-result-object v0

    return-object v0
.end method