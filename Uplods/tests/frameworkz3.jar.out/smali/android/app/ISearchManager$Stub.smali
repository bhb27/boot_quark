.class public abstract Landroid/app/ISearchManager$Stub;
.super Landroid/os/Binder;
.source "ISearchManager.java"

# interfaces
.implements Landroid/app/ISearchManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ISearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ISearchManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.ISearchManager"

.field static final TRANSACTION_getGlobalSearchActivities:I = 0x3

.field static final TRANSACTION_getGlobalSearchActivity:I = 0x4

.field static final TRANSACTION_getSearchableInfo:I = 0x1

.field static final TRANSACTION_getSearchablesInGlobalSearch:I = 0x2

.field static final TRANSACTION_getWebSearchActivity:I = 0x5

.field static final TRANSACTION_launchAssist:I = 0x6

.field static final TRANSACTION_launchLegacyAssist:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.app.ISearchManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ISearchManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.app.ISearchManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/ISearchManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/app/ISearchManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/app/ISearchManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/ISearchManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v6, "android.app.ISearchManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v8, "android.app.ISearchManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    .line 51
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 56
    .local v0, "_arg0":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/ISearchManager$Stub;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v3

    .line 57
    .local v3, "_result":Landroid/app/SearchableInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v3, :cond_1

    .line 59
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v3, p3, v7}, Landroid/app/SearchableInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 54
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Landroid/app/SearchableInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    .line 63
    .restart local v3    # "_result":Landroid/app/SearchableInfo;
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Landroid/app/SearchableInfo;
    :sswitch_2
    const-string v6, "android.app.ISearchManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getSearchablesInGlobalSearch()Ljava/util/List;

    move-result-object v4

    .line 71
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/SearchableInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 77
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/SearchableInfo;>;"
    :sswitch_3
    const-string v6, "android.app.ISearchManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getGlobalSearchActivities()Ljava/util/List;

    move-result-object v5

    .line 79
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 85
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :sswitch_4
    const-string v8, "android.app.ISearchManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 87
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v3, :cond_2

    .line 89
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {v3, p3, v7}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    .end local v3    # "_result":Landroid/content/ComponentName;
    :sswitch_5
    const-string v8, "android.app.ISearchManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getWebSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 101
    .restart local v3    # "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v3, :cond_3

    .line 103
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual {v3, p3, v7}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 113
    .end local v3    # "_result":Landroid/content/ComponentName;
    :sswitch_6
    const-string v6, "android.app.ISearchManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 116
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 121
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/ISearchManager$Stub;->launchAssist(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 119
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_2

    .line 127
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_7
    const-string v8, "android.app.ISearchManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    .line 134
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 139
    .local v2, "_arg2":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/ISearchManager$Stub;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v3

    .line 140
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v3, :cond_5

    move v6, v7

    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_result":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_3

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
