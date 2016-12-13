.class public abstract Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.super Landroid/os/Binder;
.source "ITelephonyRegistry.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyRegistry"

.field static final TRANSACTION_addOnSubscriptionsChangedListener:I = 0x1

.field static final TRANSACTION_listen:I = 0x3

.field static final TRANSACTION_listenForSubscriber:I = 0x4

.field static final TRANSACTION_notifyCallForwardingChanged:I = 0xb

.field static final TRANSACTION_notifyCallForwardingChangedForSubscriber:I = 0xc

.field static final TRANSACTION_notifyCallState:I = 0x5

.field static final TRANSACTION_notifyCallStateForSubscriber:I = 0x6

.field static final TRANSACTION_notifyCarrierNetworkChange:I = 0x20

.field static final TRANSACTION_notifyCellInfo:I = 0x16

.field static final TRANSACTION_notifyCellInfoForSubscriber:I = 0x1b

.field static final TRANSACTION_notifyCellLocation:I = 0x13

.field static final TRANSACTION_notifyCellLocationForSubscriber:I = 0x14

.field static final TRANSACTION_notifyDataActivity:I = 0xd

.field static final TRANSACTION_notifyDataActivityForSubscriber:I = 0xe

.field static final TRANSACTION_notifyDataConnection:I = 0xf

.field static final TRANSACTION_notifyDataConnectionFailed:I = 0x11

.field static final TRANSACTION_notifyDataConnectionFailedForSubscriber:I = 0x12

.field static final TRANSACTION_notifyDataConnectionForSubscriber:I = 0x10

.field static final TRANSACTION_notifyDataConnectionRealTimeInfo:I = 0x1c

.field static final TRANSACTION_notifyDisconnectCause:I = 0x19

.field static final TRANSACTION_notifyMessageWaitingChangedForPhoneId:I = 0xa

.field static final TRANSACTION_notifyOemHookRawEventForSubscriber:I = 0x1e

.field static final TRANSACTION_notifyOtaspChanged:I = 0x15

.field static final TRANSACTION_notifyPreciseCallState:I = 0x17

.field static final TRANSACTION_notifyPreciseCallStateExtended:I = 0x18

.field static final TRANSACTION_notifyPreciseDataConnectionFailed:I = 0x1a

.field static final TRANSACTION_notifyServiceStateForPhoneId:I = 0x7

.field static final TRANSACTION_notifySignalStrength:I = 0x8

.field static final TRANSACTION_notifySignalStrengthForSubscriber:I = 0x9

.field static final TRANSACTION_notifySubscriptionInfoChanged:I = 0x1f

.field static final TRANSACTION_notifyVoLteServiceStateChanged:I = 0x1d

.field static final TRANSACTION_removeOnSubscriptionsChangedListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 495
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v3

    .line 52
    .local v3, "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    const/4 v1, 0x1

    goto :goto_0

    .line 58
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    :sswitch_2
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 62
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v3

    .line 63
    .restart local v3    # "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v1, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    :sswitch_3
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v3

    .line 75
    .local v3, "_arg1":Lcom/android/internal/telephony/IPhoneStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 77
    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    .line 78
    .local v5, "_arg3":Z
    :goto_1
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    const/4 v1, 0x1

    goto :goto_0

    .line 77
    .end local v5    # "_arg3":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 84
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IPhoneStateListener;
    .end local v4    # "_arg2":I
    :sswitch_4
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v4

    .line 92
    .local v4, "_arg2":Lcom/android/internal/telephony/IPhoneStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 94
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v6, 0x1

    .local v6, "_arg4":Z
    :goto_2
    move-object v1, p0

    .line 95
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 94
    .end local v6    # "_arg4":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 101
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/android/internal/telephony/IPhoneStateListener;
    .end local v5    # "_arg3":I
    :sswitch_5
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 106
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallState(ILjava/lang/String;)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 112
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 118
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 121
    .restart local v5    # "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallStateForSubscriber(IILjava/lang/String;I)V

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 127
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    :sswitch_7
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    sget-object v1, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ServiceState;

    .line 139
    .local v4, "_arg2":Landroid/telephony/ServiceState;
    :goto_3
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 137
    .end local v4    # "_arg2":Landroid/telephony/ServiceState;
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/telephony/ServiceState;
    goto :goto_3

    .line 145
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telephony/ServiceState;
    :sswitch_8
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    sget-object v1, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SignalStrength;

    .line 153
    .local v2, "_arg0":Landroid/telephony/SignalStrength;
    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrength(Landroid/telephony/SignalStrength;)V

    .line 154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 151
    .end local v2    # "_arg0":Landroid/telephony/SignalStrength;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/telephony/SignalStrength;
    goto :goto_4

    .line 159
    .end local v2    # "_arg0":Landroid/telephony/SignalStrength;
    :sswitch_9
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    sget-object v1, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SignalStrength;

    .line 169
    .local v3, "_arg1":Landroid/telephony/SignalStrength;
    :goto_5
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrengthForSubscriber(ILandroid/telephony/SignalStrength;)V

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 167
    .end local v3    # "_arg1":Landroid/telephony/SignalStrength;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/telephony/SignalStrength;
    goto :goto_5

    .line 175
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/SignalStrength;
    :sswitch_a
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 179
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 181
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x1

    .line 182
    .local v4, "_arg2":Z
    :goto_6
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyMessageWaitingChangedForPhoneId(IIZ)V

    .line 183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 181
    .end local v4    # "_arg2":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_6

    .line 188
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_b
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    .line 191
    .local v2, "_arg0":Z
    :goto_7
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChanged(Z)V

    .line 192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 190
    .end local v2    # "_arg0":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    .line 197
    :sswitch_c
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    .line 202
    .local v3, "_arg1":Z
    :goto_8
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChangedForSubscriber(IZ)V

    .line 203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 201
    .end local v3    # "_arg1":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    .line 208
    .end local v2    # "_arg0":I
    :sswitch_d
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 211
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivity(I)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 217
    .end local v2    # "_arg0":I
    :sswitch_e
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 221
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 222
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivityForSubscriber(II)V

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 228
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_f
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 232
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v3, 0x1

    .line 234
    .local v3, "_arg1":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 241
    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkProperties;

    .line 247
    .local v7, "_arg5":Landroid/net/LinkProperties;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 248
    sget-object v1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkCapabilities;

    .line 254
    .local v8, "_arg6":Landroid/net/NetworkCapabilities;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 256
    .local v9, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v10, 0x1

    .local v10, "_arg8":Z
    :goto_c
    move-object v1, p0

    .line 257
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 232
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v7    # "_arg5":Landroid/net/LinkProperties;
    .end local v8    # "_arg6":Landroid/net/NetworkCapabilities;
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 244
    .restart local v3    # "_arg1":Z
    .restart local v4    # "_arg2":Ljava/lang/String;
    .restart local v5    # "_arg3":Ljava/lang/String;
    .restart local v6    # "_arg4":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    .restart local v7    # "_arg5":Landroid/net/LinkProperties;
    goto :goto_a

    .line 251
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "_arg6":Landroid/net/NetworkCapabilities;
    goto :goto_b

    .line 256
    .restart local v9    # "_arg7":I
    :cond_b
    const/4 v10, 0x0

    goto :goto_c

    .line 263
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v7    # "_arg5":Landroid/net/LinkProperties;
    .end local v8    # "_arg6":Landroid/net/NetworkCapabilities;
    .end local v9    # "_arg7":I
    :sswitch_10
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 267
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 269
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v4, 0x1

    .line 271
    .local v4, "_arg2":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 273
    .restart local v5    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 275
    .restart local v6    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 277
    .local v7, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 278
    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkProperties;

    .line 284
    .local v8, "_arg6":Landroid/net/LinkProperties;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 285
    sget-object v1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkCapabilities;

    .line 291
    .local v9, "_arg7":Landroid/net/NetworkCapabilities;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 293
    .local v10, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v11, 0x1

    .local v11, "_arg9":Z
    :goto_10
    move-object v1, p0

    .line 294
    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    .line 295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 269
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v7    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg6":Landroid/net/LinkProperties;
    .end local v9    # "_arg7":Landroid/net/NetworkCapabilities;
    .end local v10    # "_arg8":I
    .end local v11    # "_arg9":Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    .line 281
    .restart local v4    # "_arg2":Z
    .restart local v5    # "_arg3":Ljava/lang/String;
    .restart local v6    # "_arg4":Ljava/lang/String;
    .restart local v7    # "_arg5":Ljava/lang/String;
    :cond_d
    const/4 v8, 0x0

    .restart local v8    # "_arg6":Landroid/net/LinkProperties;
    goto :goto_e

    .line 288
    :cond_e
    const/4 v9, 0x0

    .restart local v9    # "_arg7":Landroid/net/NetworkCapabilities;
    goto :goto_f

    .line 293
    .restart local v10    # "_arg8":I
    :cond_f
    const/4 v11, 0x0

    goto :goto_10

    .line 300
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v7    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg6":Landroid/net/LinkProperties;
    .end local v9    # "_arg7":Landroid/net/NetworkCapabilities;
    .end local v10    # "_arg8":I
    :sswitch_11
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 311
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_12
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 315
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 317
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 324
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :sswitch_13
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 327
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 332
    .local v2, "_arg0":Landroid/os/Bundle;
    :goto_11
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocation(Landroid/os/Bundle;)V

    .line 333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 330
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :cond_10
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/Bundle;
    goto :goto_11

    .line 338
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :sswitch_14
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 342
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 343
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 348
    .local v3, "_arg1":Landroid/os/Bundle;
    :goto_12
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    .line 349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 346
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_11
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/os/Bundle;
    goto :goto_12

    .line 354
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_15
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 357
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOtaspChanged(I)V

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 363
    .end local v2    # "_arg0":I
    :sswitch_16
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    sget-object v1, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    .line 366
    .local v12, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfo(Ljava/util/List;)V

    .line 367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 372
    .end local v12    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_17
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 376
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 378
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 379
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseCallState(III)V

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 385
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_18
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 395
    .restart local v5    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 397
    .restart local v6    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg5":Ljava/lang/String;
    move-object v1, p0

    .line 398
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseCallStateExtended(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 404
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v7    # "_arg5":Ljava/lang/String;
    :sswitch_19
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 408
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 409
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDisconnectCause(II)V

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 415
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_1a
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 423
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 424
    .restart local v5    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 430
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :sswitch_1b
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 434
    .local v2, "_arg0":I
    sget-object v1, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    .line 435
    .local v13, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p0, v2, v13}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 441
    .end local v2    # "_arg0":I
    .end local v13    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_1c
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    .line 444
    sget-object v1, Landroid/telephony/DataConnectionRealTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/DataConnectionRealTimeInfo;

    .line 449
    .local v2, "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    :goto_13
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionRealTimeInfo(Landroid/telephony/DataConnectionRealTimeInfo;)V

    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 447
    .end local v2    # "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    :cond_12
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    goto :goto_13

    .line 455
    .end local v2    # "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    :sswitch_1d
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 458
    sget-object v1, Landroid/telephony/VoLteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/VoLteServiceState;

    .line 463
    .local v2, "_arg0":Landroid/telephony/VoLteServiceState;
    :goto_14
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V

    .line 464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 461
    .end local v2    # "_arg0":Landroid/telephony/VoLteServiceState;
    :cond_13
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/telephony/VoLteServiceState;
    goto :goto_14

    .line 469
    .end local v2    # "_arg0":Landroid/telephony/VoLteServiceState;
    :sswitch_1e
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 473
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 474
    .local v3, "_arg1":[B
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOemHookRawEventForSubscriber(I[B)V

    .line 475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 480
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :sswitch_1f
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySubscriptionInfoChanged()V

    .line 482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 487
    :sswitch_20
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    const/4 v2, 0x1

    .line 490
    .local v2, "_arg0":Z
    :goto_15
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierNetworkChange(Z)V

    .line 491
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 489
    .end local v2    # "_arg0":Z
    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
