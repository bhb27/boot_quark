.class final Landroid/nfc/cardemulation/ApduServiceInfo$1;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo;
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
        "Landroid/nfc/cardemulation/ApduServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 14
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 556
    sget-object v13, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v13, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 557
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, "description":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_2

    const/4 v2, 0x1

    .line 559
    .local v2, "onHost":Z
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v4, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 561
    .local v12, "numStaticGroups":I
    if-lez v12, :cond_0

    .line 562
    sget-object v13, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4, v13}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 564
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v5, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 566
    .local v11, "numDynamicGroups":I
    if-lez v11, :cond_1

    .line 567
    sget-object v13, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5, v13}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 569
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_3

    const/4 v6, 0x1

    .line 570
    .local v6, "requiresUnlock":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 571
    .local v7, "bannerResource":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 572
    .local v8, "uid":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 573
    .local v9, "settingsActivityName":Ljava/lang/String;
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-direct/range {v0 .. v9}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;)V

    .line 576
    .local v0, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 577
    .local v10, "bannerSize":I
    if-lez v10, :cond_4

    .line 578
    new-array v13, v10, [B

    iput-object v13, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mByteArrayBanner:[B

    .line 579
    iget-object v13, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mByteArrayBanner:[B

    invoke-virtual {p1, v13}, Landroid/os/Parcel;->readByteArray([B)V

    .line 583
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-lez v13, :cond_5

    const/4 v13, 0x1

    :goto_3
    iput-boolean v13, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mIsDynamicallyDefined:Z

    .line 584
    return-object v0

    .line 558
    .end local v0    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v2    # "onHost":Z
    .end local v4    # "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v5    # "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v6    # "requiresUnlock":Z
    .end local v7    # "bannerResource":I
    .end local v8    # "uid":I
    .end local v9    # "settingsActivityName":Ljava/lang/String;
    .end local v10    # "bannerSize":I
    .end local v11    # "numDynamicGroups":I
    .end local v12    # "numStaticGroups":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 569
    .restart local v2    # "onHost":Z
    .restart local v4    # "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v5    # "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v11    # "numDynamicGroups":I
    .restart local v12    # "numStaticGroups":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 581
    .restart local v0    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v6    # "requiresUnlock":Z
    .restart local v7    # "bannerResource":I
    .restart local v8    # "uid":I
    .restart local v9    # "settingsActivityName":Ljava/lang/String;
    .restart local v10    # "bannerSize":I
    :cond_4
    const/4 v13, 0x0

    iput-object v13, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mByteArrayBanner:[B

    goto :goto_2

    .line 583
    :cond_5
    const/4 v13, 0x0

    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 589
    new-array v0, p1, [Landroid/nfc/cardemulation/ApduServiceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$1;->newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method
