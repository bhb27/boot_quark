.class public final Landroid/os/Parcel;
.super Ljava/lang/Object;
.source "Parcel.java"


# static fields
.field private static final DEBUG_ARRAY_MAP:Z = false

.field private static final DEBUG_RECYCLE:Z = false

.field private static final EX_BAD_PARCELABLE:I = -0x2

.field private static final EX_HAS_REPLY_HEADER:I = -0x80

.field private static final EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final EX_ILLEGAL_STATE:I = -0x5

.field private static final EX_NETWORK_MAIN_THREAD:I = -0x6

.field private static final EX_NULL_POINTER:I = -0x4

.field private static final EX_SECURITY:I = -0x1

.field private static final EX_UNSUPPORTED_OPERATION:I = -0x7

.field private static final POOL_SIZE:I = 0x6

.field public static final STRING_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Parcel"

.field private static final VAL_BOOLEAN:I = 0x9

.field private static final VAL_BOOLEANARRAY:I = 0x17

.field private static final VAL_BUNDLE:I = 0x3

.field private static final VAL_BYTE:I = 0x14

.field private static final VAL_BYTEARRAY:I = 0xd

.field private static final VAL_CHARSEQUENCE:I = 0xa

.field private static final VAL_CHARSEQUENCEARRAY:I = 0x18

.field private static final VAL_DOUBLE:I = 0x8

.field private static final VAL_FLOAT:I = 0x7

.field private static final VAL_IBINDER:I = 0xf

.field private static final VAL_INTARRAY:I = 0x12

.field private static final VAL_INTEGER:I = 0x1

.field private static final VAL_LIST:I = 0xb

.field private static final VAL_LONG:I = 0x6

.field private static final VAL_LONGARRAY:I = 0x13

.field private static final VAL_MAP:I = 0x2

.field private static final VAL_NULL:I = -0x1

.field private static final VAL_OBJECTARRAY:I = 0x11

.field private static final VAL_PARCELABLE:I = 0x4

.field private static final VAL_PARCELABLEARRAY:I = 0x10

.field private static final VAL_PERSISTABLEBUNDLE:I = 0x19

.field private static final VAL_SERIALIZABLE:I = 0x15

.field private static final VAL_SHORT:I = 0x5

.field private static final VAL_SIZE:I = 0x1a

.field private static final VAL_SIZEF:I = 0x1b

.field private static final VAL_SPARSEARRAY:I = 0xc

.field private static final VAL_SPARSEBOOLEANARRAY:I = 0x16

.field private static final VAL_STRING:I = 0x0

.field private static final VAL_STRINGARRAY:I = 0xe

.field private static final mCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private static final sHolderPool:[Landroid/os/Parcel;

.field private static final sOwnedPool:[Landroid/os/Parcel;


# instance fields
.field private mNativePtr:J

.field private mNativeSize:J

.field private mOwnsNativeParcelObject:Z

.field private mStack:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 209
    new-array v0, v1, [Landroid/os/Parcel;

    sput-object v0, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 210
    new-array v0, v1, [Landroid/os/Parcel;

    sput-object v0, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .line 298
    new-instance v0, Landroid/os/Parcel$1;

    invoke-direct {v0}, Landroid/os/Parcel$1;-><init>()V

    sput-object v0, Landroid/os/Parcel;->STRING_CREATOR:Landroid/os/Parcelable$Creator;

    .line 2553
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativePtr"    # J

    .prologue
    .line 2580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2585
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->init(J)V

    .line 2586
    return-void
.end method

.method static native clearFileDescriptor(Ljava/io/FileDescriptor;)V
.end method

.method static native closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2605
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2606
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v0, :cond_0

    .line 2607
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDestroy(J)V

    .line 2608
    invoke-direct {p0, v2, v3}, Landroid/os/Parcel;->updateNativeSize(J)V

    .line 2610
    :cond_0
    iput-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 2612
    :cond_1
    return-void
.end method

.method static native dupFileDescriptor(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private freeBuffer()V
    .locals 2

    .prologue
    .line 2599
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v0, :cond_0

    .line 2600
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeFreeBuffer(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    .line 2602
    :cond_0
    return-void
.end method

.method private static getExceptionCode(Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 2732
    instance-of v0, p0, Ljava/lang/SecurityException;

    if-eqz v0, :cond_0

    .line 2733
    const/4 v0, -0x1

    .line 2748
    :goto_0
    return v0

    .line 2734
    :cond_0
    instance-of v0, p0, Landroid/os/BadParcelableException;

    if-eqz v0, :cond_1

    .line 2735
    const/4 v0, -0x2

    goto :goto_0

    .line 2736
    :cond_1
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_2

    .line 2737
    const/4 v0, -0x3

    goto :goto_0

    .line 2738
    :cond_2
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_3

    .line 2739
    const/4 v0, -0x4

    goto :goto_0

    .line 2740
    :cond_3
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_4

    .line 2741
    const/4 v0, -0x5

    goto :goto_0

    .line 2742
    :cond_4
    instance-of v0, p0, Landroid/os/NetworkOnMainThreadException;

    if-eqz v0, :cond_5

    .line 2743
    const/4 v0, -0x6

    goto :goto_0

    .line 2744
    :cond_5
    instance-of v0, p0, Ljava/lang/UnsupportedOperationException;

    if-eqz v0, :cond_6

    .line 2745
    const/4 v0, -0x7

    goto :goto_0

    .line 2748
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native getGlobalAllocCount()J
.end method

.method public static native getGlobalAllocSize()J
.end method

.method private init(J)V
    .locals 3
    .param p1, "nativePtr"    # J

    .prologue
    .line 2589
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 2590
    iput-wide p1, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 2591
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    .line 2596
    :goto_0
    return-void

    .line 2593
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 2594
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    goto :goto_0
.end method

.method private static native nativeAppendFrom(JJII)J
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeCreateByteArray(J)[B
.end method

.method private static native nativeDataAvail(J)I
.end method

.method private static native nativeDataCapacity(J)I
.end method

.method private static native nativeDataPosition(J)I
.end method

.method private static native nativeDataSize(J)I
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeEnforceInterface(JLjava/lang/String;)V
.end method

.method private static native nativeFreeBuffer(J)J
.end method

.method private static native nativeGetBlobAshmemSize(J)J
.end method

.method private static native nativeHasFileDescriptors(J)Z
.end method

.method private static native nativeMarshall(J)[B
.end method

.method private static native nativePushAllowFds(JZ)Z
.end method

.method private static native nativeReadBlob(J)[B
.end method

.method private static native nativeReadDouble(J)D
.end method

.method private static native nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;
.end method

.method private static native nativeReadFloat(J)F
.end method

.method private static native nativeReadInt(J)I
.end method

.method private static native nativeReadLong(J)J
.end method

.method private static native nativeReadString(J)Ljava/lang/String;
.end method

.method private static native nativeReadStrongBinder(J)Landroid/os/IBinder;
.end method

.method private static native nativeRestoreAllowFds(JZ)V
.end method

.method private static native nativeSetDataCapacity(JI)V
.end method

.method private static native nativeSetDataPosition(JI)V
.end method

.method private static native nativeSetDataSize(JI)J
.end method

.method private static native nativeUnmarshall(J[BII)J
.end method

.method private static native nativeWriteBlob(J[BII)V
.end method

.method private static native nativeWriteByteArray(J[BII)V
.end method

.method private static native nativeWriteDouble(JD)V
.end method

.method private static native nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)J
.end method

.method private static native nativeWriteFloat(JF)V
.end method

.method private static native nativeWriteInt(JI)V
.end method

.method private static native nativeWriteInterfaceToken(JLjava/lang/String;)V
.end method

.method private static native nativeWriteLong(JJ)V
.end method

.method private static native nativeWriteString(JLjava/lang/String;)V
.end method

.method private static native nativeWriteStrongBinder(JLandroid/os/IBinder;)V
.end method

.method public static obtain()Landroid/os/Parcel;
    .locals 6

    .prologue
    .line 312
    sget-object v2, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 313
    .local v2, "pool":[Landroid/os/Parcel;
    monitor-enter v2

    .line 315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    .line 316
    :try_start_0
    aget-object v1, v2, v0

    .line 317
    .local v1, "p":Landroid/os/Parcel;
    if-eqz v1, :cond_0

    .line 318
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 322
    monitor-exit v2

    .line 326
    .end local v1    # "p":Landroid/os/Parcel;
    :goto_1
    return-object v1

    .line 315
    .restart local v1    # "p":Landroid/os/Parcel;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    new-instance v1, Landroid/os/Parcel;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v4, v5}, Landroid/os/Parcel;-><init>(J)V

    goto :goto_1

    .line 325
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected static final obtain(I)Landroid/os/Parcel;
    .locals 1
    .param p0, "obj"    # I

    .prologue
    .line 2557
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected static final obtain(J)Landroid/os/Parcel;
    .locals 4
    .param p0, "obj"    # J

    .prologue
    .line 2562
    sget-object v2, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .line 2563
    .local v2, "pool":[Landroid/os/Parcel;
    monitor-enter v2

    .line 2565
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    .line 2566
    :try_start_0
    aget-object v1, v2, v0

    .line 2567
    .local v1, "p":Landroid/os/Parcel;
    if-eqz v1, :cond_0

    .line 2568
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 2572
    invoke-direct {v1, p0, p1}, Landroid/os/Parcel;->init(J)V

    .line 2573
    monitor-exit v2

    .line 2577
    .end local v1    # "p":Landroid/os/Parcel;
    :goto_1
    return-object v1

    .line 2565
    .restart local v1    # "p":Landroid/os/Parcel;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2576
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2577
    new-instance v1, Landroid/os/Parcel;

    invoke-direct {v1, p0, p1}, Landroid/os/Parcel;-><init>(J)V

    goto :goto_1

    .line 2576
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static native openFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method private readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # [Ljava/lang/Object;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2695
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 2696
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2698
    .local v1, "value":Ljava/lang/Object;
    aput-object v1, p1, v0

    .line 2695
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2700
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private final readCauseInternal(ILjava/lang/String;)Ljava/lang/Throwable;
    .locals 12
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 2786
    const/4 v9, 0x0

    .line 2787
    .local v9, "result":Ljava/lang/Throwable;
    packed-switch p1, :pswitch_data_0

    .line 2810
    const/4 v11, 0x0

    .line 2842
    :goto_0
    return-object v11

    .line 2789
    :pswitch_0
    new-instance v9, Ljava/lang/SecurityException;

    .end local v9    # "result":Ljava/lang/Throwable;
    invoke-direct {v9, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 2814
    .restart local v9    # "result":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2815
    .local v0, "N":I
    if-ltz v0, :cond_1

    .line 2816
    new-array v10, v0, [Ljava/lang/StackTraceElement;

    .line 2817
    .local v10, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v0, :cond_0

    .line 2818
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2819
    .local v4, "className":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2820
    .local v8, "methodName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2821
    .local v5, "fileName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2822
    .local v7, "lineNumber":I
    new-instance v11, Ljava/lang/StackTraceElement;

    invoke-direct {v11, v4, v8, v5, v7}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v11, v10, v6

    .line 2817
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2792
    .end local v0    # "N":I
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "lineNumber":I
    .end local v8    # "methodName":Ljava/lang/String;
    .end local v10    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :pswitch_1
    new-instance v9, Landroid/os/BadParcelableException;

    .end local v9    # "result":Ljava/lang/Throwable;
    invoke-direct {v9, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 2793
    .restart local v9    # "result":Ljava/lang/Throwable;
    goto :goto_1

    .line 2795
    :pswitch_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .end local v9    # "result":Ljava/lang/Throwable;
    invoke-direct {v9, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2796
    .restart local v9    # "result":Ljava/lang/Throwable;
    goto :goto_1

    .line 2798
    :pswitch_3
    new-instance v9, Ljava/lang/NullPointerException;

    .end local v9    # "result":Ljava/lang/Throwable;
    invoke-direct {v9, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2799
    .restart local v9    # "result":Ljava/lang/Throwable;
    goto :goto_1

    .line 2801
    :pswitch_4
    new-instance v9, Ljava/lang/IllegalStateException;

    .end local v9    # "result":Ljava/lang/Throwable;
    invoke-direct {v9, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2802
    .restart local v9    # "result":Ljava/lang/Throwable;
    goto :goto_1

    .line 2804
    :pswitch_5
    new-instance v9, Landroid/os/NetworkOnMainThreadException;

    .end local v9    # "result":Ljava/lang/Throwable;
    invoke-direct {v9}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    .line 2805
    .restart local v9    # "result":Ljava/lang/Throwable;
    goto :goto_1

    .line 2807
    :pswitch_6
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    .end local v9    # "result":Ljava/lang/Throwable;
    invoke-direct {v9, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 2808
    .restart local v9    # "result":Ljava/lang/Throwable;
    goto :goto_1

    .line 2829
    .restart local v0    # "N":I
    .restart local v6    # "i":I
    .restart local v10    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 2833
    .end local v6    # "i":I
    .end local v10    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v2

    .line 2834
    .local v2, "childCode":I
    if-eqz v2, :cond_2

    .line 2835
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2836
    .local v3, "childMsg":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Landroid/os/Parcel;->readCauseInternal(ILjava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    .line 2837
    .local v1, "cause":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 2838
    invoke-virtual {v9, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local v3    # "childMsg":Ljava/lang/String;
    :cond_2
    move-object v11, v9

    .line 2842
    goto :goto_0

    .line 2787
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Ljava/util/List;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2685
    :goto_0
    if-lez p2, :cond_0

    .line 2686
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2688
    .local v0, "value":Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2689
    add-int/lit8 p2, p2, -0x1

    .line 2690
    goto :goto_0

    .line 2691
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private final readSerializable(Ljava/lang/ClassLoader;)Ljava/io/Serializable;
    .locals 9
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2512
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2513
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 2517
    const/4 v6, 0x0

    .line 2537
    :goto_0
    return-object v6

    .line 2520
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 2521
    .local v5, "serializedData":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2523
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v4, Landroid/os/Parcel$2;

    invoke-direct {v4, p0, v0, p1}, Landroid/os/Parcel$2;-><init>(Landroid/os/Parcel;Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    .line 2537
    .local v4, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2538
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v2

    .line 2539
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcelable encountered IOException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2542
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 2543
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcelable encountered ClassNotFoundException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Landroid/util/SparseArray;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2704
    :goto_0
    if-lez p2, :cond_0

    .line 2705
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2706
    .local v0, "key":I
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2708
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2709
    add-int/lit8 p2, p2, -0x1

    .line 2710
    goto :goto_0

    .line 2711
    .end local v0    # "key":I
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V
    .locals 4
    .param p1, "outVal"    # Landroid/util/SparseBooleanArray;
    .param p2, "N"    # I

    .prologue
    const/4 v2, 0x1

    .line 2715
    :goto_0
    if-lez p2, :cond_1

    .line 2716
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2717
    .local v0, "key":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 2719
    .local v1, "value":Z
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2720
    add-int/lit8 p2, p2, -0x1

    .line 2721
    goto :goto_0

    .line 2717
    .end local v1    # "value":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 2722
    .end local v0    # "key":I
    :cond_1
    return-void
.end method

.method private updateNativeSize(J)V
    .locals 5
    .param p1, "newNativeSize"    # J

    .prologue
    .line 615
    iget-boolean v1, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v1, :cond_1

    .line 616
    const-wide/32 v2, 0x7fffffff

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 617
    const-wide/32 p1, 0x7fffffff

    .line 619
    :cond_0
    iget-wide v2, p0, Landroid/os/Parcel;->mNativeSize:J

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1

    .line 620
    iget-wide v2, p0, Landroid/os/Parcel;->mNativeSize:J

    sub-long v2, p1, v2

    long-to-int v0, v2

    .line 621
    .local v0, "delta":I
    if-lez v0, :cond_2

    .line 622
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 626
    :goto_0
    iput-wide p1, p0, Landroid/os/Parcel;->mNativeSize:J

    .line 629
    .end local v0    # "delta":I
    :cond_1
    return-void

    .line 624
    .restart local v0    # "delta":I
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    neg-int v2, v0

    invoke-virtual {v1, v2}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    goto :goto_0
.end method

.method private final writeCauseInternal(Ljava/lang/Throwable;Ljava/util/Set;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2766
    .local p2, "causeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    invoke-static {p1}, Landroid/os/Parcel;->getExceptionCode(Ljava/lang/Throwable;)I

    move-result v0

    .line 2768
    .local v0, "code":I
    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2769
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2771
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2772
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2775
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/Parcel;->writeStackTraceInternal([Ljava/lang/StackTraceElement;)V

    .line 2778
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/os/Parcel;->writeCauseInternal(Ljava/lang/Throwable;Ljava/util/Set;)V

    .line 2783
    :goto_0
    return-void

    .line 2781
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private final writeStackTraceInternal([Ljava/lang/StackTraceElement;)V
    .locals 5
    .param p1, "stackTraceElements"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 2752
    if-nez p1, :cond_1

    .line 2753
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2763
    :cond_0
    return-void

    .line 2756
    :cond_1
    array-length v4, p1

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2757
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2758
    .local v3, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2759
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2760
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2761
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2757
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final appendFrom(Landroid/os/Parcel;II)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 458
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    iget-wide v2, p1, Landroid/os/Parcel;->mNativePtr:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/os/Parcel;->nativeAppendFrom(JJII)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    .line 459
    return-void
.end method

.method public final createBinderArray()[Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 1125
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1126
    .local v0, "N":I
    if-ltz v0, :cond_0

    .line 1127
    new-array v2, v0, [Landroid/os/IBinder;

    .line 1128
    .local v2, "val":[Landroid/os/IBinder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1129
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1133
    .end local v1    # "i":I
    .end local v2    # "val":[Landroid/os/IBinder;
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createBinderArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2118
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2119
    .local v0, "N":I
    if-gez v0, :cond_1

    .line 2120
    const/4 v1, 0x0

    .line 2127
    :cond_0
    return-object v1

    .line 2122
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2123
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :goto_0
    if-lez v0, :cond_0

    .line 2124
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2125
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final createBooleanArray()[Z
    .locals 4

    .prologue
    .line 837
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 841
    .local v0, "N":I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_1

    .line 842
    new-array v2, v0, [Z

    .line 843
    .local v2, "val":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 844
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    aput-boolean v3, v2, v1

    .line 843
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 844
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 848
    .end local v1    # "i":I
    .end local v2    # "val":[Z
    :cond_1
    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method

.method public final createByteArray()[B
    .locals 2

    .prologue
    .line 1867
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeCreateByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final createCharArray()[C
    .locals 4

    .prologue
    .line 876
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 877
    .local v0, "N":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_0

    .line 878
    new-array v2, v0, [C

    .line 879
    .local v2, "val":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 880
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 879
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 884
    .end local v1    # "i":I
    .end local v2    # "val":[C
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createDoubleArray()[D
    .locals 6

    .prologue
    .line 1022
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1024
    .local v0, "N":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_0

    .line 1025
    new-array v2, v0, [D

    .line 1026
    .local v2, "val":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1027
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 1026
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1031
    .end local v1    # "i":I
    .end local v2    # "val":[D
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createFloatArray()[F
    .locals 4

    .prologue
    .line 985
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 987
    .local v0, "N":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_0

    .line 988
    new-array v2, v0, [F

    .line 989
    .local v2, "val":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 990
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    aput v3, v2, v1

    .line 989
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 994
    .end local v1    # "i":I
    .end local v2    # "val":[F
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createIntArray()[I
    .locals 4

    .prologue
    .line 912
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 913
    .local v0, "N":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_0

    .line 914
    new-array v2, v0, [I

    .line 915
    .local v2, "val":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 916
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 915
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 920
    .end local v1    # "i":I
    .end local v2    # "val":[I
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createLongArray()[J
    .locals 6

    .prologue
    .line 948
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 950
    .local v0, "N":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_0

    .line 951
    new-array v2, v0, [J

    .line 952
    .local v2, "val":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 953
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 952
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 957
    .end local v1    # "i":I
    .end local v2    # "val":[J
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createStringArray()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1059
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1060
    .local v0, "N":I
    if-ltz v0, :cond_0

    .line 1061
    new-array v2, v0, [Ljava/lang/String;

    .line 1062
    .local v2, "val":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1063
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1062
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1067
    .end local v1    # "i":I
    .end local v2    # "val":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createStringArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2094
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2095
    .local v0, "N":I
    if-gez v0, :cond_1

    .line 2096
    const/4 v1, 0x0

    .line 2103
    :cond_0
    return-object v1

    .line 2098
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2099
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-lez v0, :cond_0

    .line 2100
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2101
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 2191
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2192
    .local v0, "N":I
    if-gez v0, :cond_1

    .line 2193
    const/4 v2, 0x0

    .line 2201
    :cond_0
    return-object v2

    .line 2195
    :cond_1
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    .line 2196
    .local v2, "l":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2197
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 2198
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2196
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v2, 0x0

    .line 2031
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2032
    .local v0, "N":I
    if-gez v0, :cond_1

    move-object v1, v2

    .line 2044
    :cond_0
    return-object v1

    .line 2035
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2036
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_0
    if-lez v0, :cond_0

    .line 2037
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 2038
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2042
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2040
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final dataAvail()I
    .locals 2

    .prologue
    .line 373
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataAvail(J)I

    move-result v0

    return v0
.end method

.method public final dataCapacity()I
    .locals 2

    .prologue
    .line 391
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataCapacity(J)I

    move-result v0

    return v0
.end method

.method public final dataPosition()I
    .locals 2

    .prologue
    .line 381
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataPosition(J)I

    move-result v0

    return v0
.end method

.method public final dataSize()I
    .locals 2

    .prologue
    .line 365
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataSize(J)I

    move-result v0

    return v0
.end method

.method public final enforceInterface(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 478
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeEnforceInterface(JLjava/lang/String;)V

    .line 479
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2621
    invoke-direct {p0}, Landroid/os/Parcel;->destroy()V

    .line 2622
    return-void
.end method

.method public getBlobAshmemSize()J
    .locals 2

    .prologue
    .line 2728
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeGetBlobAshmemSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final hasFileDescriptors()Z
    .locals 2

    .prologue
    .line 465
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeHasFileDescriptors(J)Z

    move-result v0

    return v0
.end method

.method public final marshall()[B
    .locals 2

    .prologue
    .line 447
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeMarshall(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final pushAllowFds(Z)Z
    .locals 2
    .param p1, "allowFds"    # Z

    .prologue
    .line 427
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativePushAllowFds(JZ)Z

    move-result v0

    return v0
.end method

.method public final readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1977
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1978
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 1979
    const/4 v1, 0x0

    .line 1983
    :goto_0
    return-object v1

    .line 1981
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    .line 1982
    .local v1, "l":[Ljava/lang/Object;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1961
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1962
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 1963
    const/4 v1, 0x0

    .line 1967
    :goto_0
    return-object v1

    .line 1965
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1966
    .local v1, "l":Ljava/util/ArrayList;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public readArrayMap(Landroid/util/ArrayMap;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Landroid/util/ArrayMap;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2676
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2677
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 2681
    :goto_0
    return-void

    .line 2680
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/os/Parcel;->readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Landroid/util/ArrayMap;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2642
    :goto_0
    if-lez p2, :cond_0

    .line 2644
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2645
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2649
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2650
    add-int/lit8 p2, p2, -0x1

    .line 2651
    goto :goto_0

    .line 2652
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->validate()V

    .line 2653
    return-void
.end method

.method readArrayMapSafelyInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Landroid/util/ArrayMap;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2662
    :goto_0
    if-lez p2, :cond_0

    .line 2663
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2666
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2667
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2668
    add-int/lit8 p2, p2, -0x1

    .line 2669
    goto :goto_0

    .line 2670
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public final readBinderArray([Landroid/os/IBinder;)V
    .locals 4
    .param p1, "val"    # [Landroid/os/IBinder;

    .prologue
    .line 1138
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1139
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 1140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1141
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    aput-object v2, p1, v1

    .line 1140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1144
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1146
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readBinderList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2164
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2165
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2166
    .local v1, "N":I
    const/4 v2, 0x0

    .line 2167
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    if-ge v2, v1, :cond_0

    .line 2168
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2170
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    .line 2171
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2173
    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    .line 2174
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2173
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2176
    :cond_2
    return-void
.end method

.method public final readBlob()[B
    .locals 2

    .prologue
    .line 1890
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadBlob(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final readBooleanArray([Z)V
    .locals 4
    .param p1, "val"    # [Z

    .prologue
    .line 853
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 854
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_1

    .line 855
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 856
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    aput-boolean v2, p1, v1

    .line 855
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 856
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 859
    .end local v1    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 861
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public final readBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1793
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1803
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1804
    .local v1, "length":I
    if-gez v1, :cond_1

    .line 1806
    const/4 v0, 0x0

    .line 1813
    :cond_0
    :goto_0
    return-object v0

    .line 1809
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Parcel;I)V

    .line 1810
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 1811
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readByte()B
    .locals 1

    .prologue
    .line 1746
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public final readByteArray([B)V
    .locals 4
    .param p1, "val"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1876
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1877
    .local v0, "ba":[B
    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_0

    .line 1878
    array-length v1, v0

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1882
    return-void

    .line 1880
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readCharArray([C)V
    .locals 4
    .param p1, "val"    # [C

    .prologue
    .line 889
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 890
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 891
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 892
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, p1, v1

    .line 891
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 895
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 897
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1711
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final readCharSequenceArray()[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 1919
    const/4 v0, 0x0

    .line 1921
    .local v0, "array":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1922
    .local v2, "length":I
    if-ltz v2, :cond_0

    .line 1924
    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 1926
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1928
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1926
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1932
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public final readCharSequenceList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1940
    const/4 v0, 0x0

    .line 1942
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1943
    .local v2, "length":I
    if-ltz v2, :cond_0

    .line 1944
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1946
    .restart local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1947
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1946
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1951
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public final readCreator(Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .locals 2
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<*>;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2405
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    instance-of v1, p1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 2406
    check-cast v0, Landroid/os/Parcelable$ClassLoaderCreator;

    .line 2408
    .local v0, "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    invoke-interface {v0, p0, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 2410
    .end local v0    # "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public final readDouble()D
    .locals 2

    .prologue
    .line 1696
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readDoubleArray([D)V
    .locals 4
    .param p1, "val"    # [D

    .prologue
    .line 1036
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1037
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 1038
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1039
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 1038
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1042
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1044
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readException()V
    .locals 2

    .prologue
    .line 1576
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 1577
    .local v0, "code":I
    if-eqz v0, :cond_0

    .line 1578
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1579
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    .line 1581
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final readException(ILjava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1624
    const/4 v1, 0x0

    .line 1625
    .local v1, "runtimeException":Ljava/lang/RuntimeException;
    packed-switch p1, :pswitch_data_0

    .line 1649
    :goto_0
    if-eqz v1, :cond_2

    .line 1650
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "userdebug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1657
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readCauseInternal(ILjava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    .line 1658
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 1659
    invoke-virtual {v1, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1663
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    throw v1

    .line 1627
    :pswitch_0
    new-instance v1, Ljava/lang/SecurityException;

    .end local v1    # "runtimeException":Ljava/lang/RuntimeException;
    invoke-direct {v1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1628
    .restart local v1    # "runtimeException":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1630
    :pswitch_1
    new-instance v1, Landroid/os/BadParcelableException;

    .end local v1    # "runtimeException":Ljava/lang/RuntimeException;
    invoke-direct {v1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 1631
    .restart local v1    # "runtimeException":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1633
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .end local v1    # "runtimeException":Ljava/lang/RuntimeException;
    invoke-direct {v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1634
    .restart local v1    # "runtimeException":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1636
    :pswitch_3
    new-instance v1, Ljava/lang/NullPointerException;

    .end local v1    # "runtimeException":Ljava/lang/RuntimeException;
    invoke-direct {v1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1637
    .restart local v1    # "runtimeException":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1639
    :pswitch_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .end local v1    # "runtimeException":Ljava/lang/RuntimeException;
    invoke-direct {v1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1640
    .restart local v1    # "runtimeException":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1642
    :pswitch_5
    new-instance v1, Landroid/os/NetworkOnMainThreadException;

    .end local v1    # "runtimeException":Ljava/lang/RuntimeException;
    invoke-direct {v1}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    .line 1643
    .restart local v1    # "runtimeException":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1645
    :pswitch_6
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .end local v1    # "runtimeException":Ljava/lang/RuntimeException;
    invoke-direct {v1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .restart local v1    # "runtimeException":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1665
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown exception code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1625
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readExceptionCode()I
    .locals 4

    .prologue
    .line 1597
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1598
    .local v0, "code":I
    const/16 v2, -0x80

    if-ne v0, v2, :cond_0

    .line 1599
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1600
    .local v1, "headerSize":I
    if-nez v1, :cond_1

    .line 1601
    const-string v2, "Parcel"

    const-string v3, "Unexpected zero-sized Parcel reply header."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :goto_0
    const/4 v0, 0x0

    .line 1613
    .end local v0    # "code":I
    .end local v1    # "headerSize":I
    :cond_0
    return v0

    .line 1607
    .restart local v0    # "code":I
    .restart local v1    # "headerSize":I
    :cond_1
    invoke-static {p0}, Landroid/os/StrictMode;->readAndHandleBinderCallViolations(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method public final readFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 4

    .prologue
    .line 1725
    iget-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/os/Parcel;->nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1726
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final readFloat()F
    .locals 2

    .prologue
    .line 1688
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadFloat(J)F

    move-result v0

    return v0
.end method

.method public final readFloatArray([F)V
    .locals 4
    .param p1, "val"    # [F

    .prologue
    .line 999
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1000
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 1001
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1002
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    aput v2, p1, v1

    .line 1001
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1005
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1007
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1778
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1779
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 1780
    const/4 v1, 0x0

    .line 1784
    :goto_0
    return-object v1

    .line 1782
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1783
    .local v1, "m":Ljava/util/HashMap;
    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readInt()I
    .locals 2

    .prologue
    .line 1673
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadInt(J)I

    move-result v0

    return v0
.end method

.method public final readIntArray([I)V
    .locals 4
    .param p1, "val"    # [I

    .prologue
    .line 925
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 926
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 927
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 928
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, p1, v1

    .line 927
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 931
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 933
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Ljava/util/List;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1765
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1766
    .local v0, "N":I
    invoke-direct {p0, p1, v0, p2}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    .line 1767
    return-void
.end method

.method public final readLong()J
    .locals 2

    .prologue
    .line 1680
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readLongArray([J)V
    .locals 4
    .param p1, "val"    # [J

    .prologue
    .line 962
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 963
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 964
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 965
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 964
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 968
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 970
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Ljava/util/Map;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1755
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1756
    .local v0, "N":I
    invoke-virtual {p0, p1, v0, p2}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    .line 1757
    return-void
.end method

.method readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Ljava/util/Map;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2626
    :goto_0
    if-lez p2, :cond_0

    .line 2627
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2628
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2629
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2630
    add-int/lit8 p2, p2, -0x1

    .line 2631
    goto :goto_0

    .line 2632
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public final readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2389
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v1

    .line 2390
    .local v1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    if-nez v1, :cond_0

    .line 2391
    const/4 v2, 0x0

    .line 2398
    :goto_0
    return-object v2

    .line 2393
    :cond_0
    instance-of v2, v1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 2394
    check-cast v0, Landroid/os/Parcelable$ClassLoaderCreator;

    .line 2396
    .local v0, "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    invoke-interface {v0, p0, p1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    goto :goto_0

    .line 2398
    .end local v0    # "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    :cond_1
    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public final readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;
    .locals 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2491
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2492
    .local v0, "N":I
    if-gez v0, :cond_1

    .line 2493
    const/4 v2, 0x0

    .line 2499
    :cond_0
    return-object v2

    .line 2495
    :cond_1
    new-array v2, v0, [Landroid/os/Parcelable;

    .line 2496
    .local v2, "p":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2497
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2496
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
    .locals 12
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/Parcelable$Creator",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2415
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2416
    .local v5, "name":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 2481
    :goto_0
    return-object v0

    .line 2420
    :cond_0
    sget-object v9, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    monitor-enter v9

    .line 2421
    :try_start_0
    sget-object v8, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 2422
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    if-nez v4, :cond_1

    .line 2423
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2424
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    sget-object v8, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2426
    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable$Creator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2427
    .local v0, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    if-nez v0, :cond_7

    .line 2431
    if-nez p1, :cond_2

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 2435
    .local v7, "parcelableClassLoader":Ljava/lang/ClassLoader;
    :goto_1
    const/4 v8, 0x0

    invoke-static {v5, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 2437
    .local v6, "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Landroid/os/Parcelable;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2438
    new-instance v8, Landroid/os/BadParcelableException;

    const-string v10, "Parcelable protocol requires that the class implements Parcelable"

    invoke-direct {v8, v10}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2456
    .end local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .end local v6    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v2

    .line 2457
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    const-string v8, "Parcel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Illegal access when unmarshalling: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2458
    new-instance v8, Landroid/os/BadParcelableException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IllegalAccessException when unmarshalling: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2479
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .restart local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    :cond_2
    move-object v7, p1

    .line 2431
    goto :goto_1

    .line 2441
    .restart local v6    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    :cond_3
    :try_start_3
    const-string v8, "CREATOR"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 2442
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_4

    .line 2443
    new-instance v8, Landroid/os/BadParcelableException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parcelable protocol requires the CREATOR object to be static on class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2461
    .end local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v2

    .line 2462
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_4
    const-string v8, "Parcel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Class not found when unmarshalling: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2463
    new-instance v8, Landroid/os/BadParcelableException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ClassNotFoundException when unmarshalling: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2446
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .restart local v3    # "f":Ljava/lang/reflect/Field;
    .restart local v6    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    :cond_4
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 2447
    .local v1, "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2450
    new-instance v8, Landroid/os/BadParcelableException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parcelable protocol requires a Parcelable.Creator object called CREATOR on class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2466
    .end local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .end local v1    # "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    :catch_2
    move-exception v2

    .line 2467
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    :try_start_6
    new-instance v8, Landroid/os/BadParcelableException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parcelable protocol requires a Parcelable.Creator object called CREATOR on class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2454
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .restart local v1    # "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "f":Ljava/lang/reflect/Field;
    .restart local v6    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    :cond_5
    const/4 v8, 0x0

    :try_start_7
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    check-cast v0, Landroid/os/Parcelable$Creator;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2471
    .restart local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    if-nez v0, :cond_6

    .line 2472
    :try_start_8
    new-instance v8, Landroid/os/BadParcelableException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parcelable protocol requires a non-null Parcelable.Creator object called CREATOR on class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2477
    :cond_6
    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2479
    .end local v1    # "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    :cond_7
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method public final readPersistableBundle()Landroid/os/PersistableBundle;
    .locals 1

    .prologue
    .line 1822
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public final readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1832
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1833
    .local v1, "length":I
    if-gez v1, :cond_1

    .line 1835
    const/4 v0, 0x0

    .line 1842
    :cond_0
    :goto_0
    return-object v0

    .line 1838
    :cond_1
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Parcel;I)V

    .line 1839
    .local v0, "bundle":Landroid/os/PersistableBundle;
    if-eqz p1, :cond_0

    .line 1840
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readRawFileDescriptor()Ljava/io/FileDescriptor;
    .locals 2

    .prologue
    .line 1731
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final readSerializable()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 2508
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public final readSize()Landroid/util/Size;
    .locals 3

    .prologue
    .line 1849
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1850
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1851
    .local v0, "height":I
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method

.method public final readSizeF()Landroid/util/SizeF;
    .locals 3

    .prologue
    .line 1858
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1859
    .local v1, "width":F
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 1860
    .local v0, "height":F
    new-instance v2, Landroid/util/SizeF;

    invoke-direct {v2, v1, v0}, Landroid/util/SizeF;-><init>(FF)V

    return-object v2
.end method

.method public final readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1993
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1994
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 1995
    const/4 v1, 0x0

    .line 1999
    :goto_0
    return-object v1

    .line 1997
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 1998
    .local v1, "sa":Landroid/util/SparseArray;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readSparseBooleanArray()Landroid/util/SparseBooleanArray;
    .locals 2

    .prologue
    .line 2008
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2009
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 2010
    const/4 v1, 0x0

    .line 2014
    :goto_0
    return-object v1

    .line 2012
    :cond_0
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 2013
    .local v1, "sa":Landroid/util/SparseBooleanArray;
    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V

    goto :goto_0
.end method

.method public final readString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1703
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readStringArray([Ljava/lang/String;)V
    .locals 4
    .param p1, "val"    # [Ljava/lang/String;

    .prologue
    .line 1072
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1073
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 1074
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1075
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 1074
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1078
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1080
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readStringArray()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1898
    const/4 v0, 0x0

    .line 1900
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1901
    .local v2, "length":I
    if-ltz v2, :cond_0

    .line 1903
    new-array v0, v2, [Ljava/lang/String;

    .line 1905
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1907
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1905
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1911
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public final readStringList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2140
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2141
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2142
    .local v1, "N":I
    const/4 v2, 0x0

    .line 2143
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    if-ge v2, v1, :cond_0

    .line 2144
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2146
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    .line 2147
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2146
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2149
    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    .line 2150
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2149
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2152
    :cond_2
    return-void
.end method

.method public final readStrongBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 1718
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadStrongBinder(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2205
    .local p1, "val":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2206
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_1

    .line 2207
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2208
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2209
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    .line 2207
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2211
    :cond_0
    const/4 v2, 0x0

    aput-object v2, p1, v1

    goto :goto_1

    .line 2215
    .end local v1    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2217
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public final readTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2225
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v4, 0x0

    .line 2060
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2061
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2062
    .local v1, "N":I
    const/4 v2, 0x0

    .line 2063
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    if-ge v2, v1, :cond_1

    .line 2064
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2065
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2063
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2067
    :cond_0
    invoke-interface {p1, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2070
    :cond_1
    :goto_2
    if-ge v2, v1, :cond_3

    .line 2071
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 2072
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2070
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2074
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2077
    :cond_3
    :goto_4
    if-ge v2, v0, :cond_4

    .line 2078
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2077
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2080
    :cond_4
    return-void
.end method

.method public final readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2240
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2241
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .line 2243
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 5
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v2, 0x1

    .line 2279
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2281
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    .line 2370
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    add-int/lit8 v0, v2, -0x4

    .line 2371
    .local v0, "off":I
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parcel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Unmarshalling unknown type code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2283
    .end local v0    # "off":I
    :pswitch_0
    const/4 v2, 0x0

    .line 2367
    :goto_0
    return-object v2

    .line 2286
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2289
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 2292
    :pswitch_3
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    goto :goto_0

    .line 2295
    :pswitch_4
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    goto :goto_0

    .line 2298
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto :goto_0

    .line 2301
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 2304
    :pswitch_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 2307
    :pswitch_8
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 2310
    :pswitch_9
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 2313
    :pswitch_a
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 2316
    :pswitch_b
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 2319
    :pswitch_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    goto :goto_0

    .line 2322
    :pswitch_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    goto :goto_0

    .line 2325
    :pswitch_e
    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2328
    :pswitch_f
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 2331
    :pswitch_10
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    .line 2334
    :pswitch_11
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 2337
    :pswitch_12
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    goto :goto_0

    .line 2340
    :pswitch_13
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    goto :goto_0

    .line 2343
    :pswitch_14
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto/16 :goto_0

    .line 2346
    :pswitch_15
    invoke-direct {p0, p1}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;)Ljava/io/Serializable;

    move-result-object v2

    goto/16 :goto_0

    .line 2349
    :pswitch_16
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 2352
    :pswitch_17
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v2

    goto/16 :goto_0

    .line 2355
    :pswitch_18
    invoke-virtual {p0}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v2

    goto/16 :goto_0

    .line 2358
    :pswitch_19
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    goto/16 :goto_0

    .line 2361
    :pswitch_1a
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v2

    goto/16 :goto_0

    .line 2364
    :pswitch_1b
    invoke-virtual {p0}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    move-result-object v2

    goto/16 :goto_0

    .line 2367
    :pswitch_1c
    invoke-virtual {p0}, Landroid/os/Parcel;->readSizeF()Landroid/util/SizeF;

    move-result-object v2

    goto/16 :goto_0

    .line 2281
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_19
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_17
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_16
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_18
        :pswitch_c
        :pswitch_f
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method public final recycle()V
    .locals 4

    .prologue
    .line 335
    invoke-direct {p0}, Landroid/os/Parcel;->freeBuffer()V

    .line 338
    iget-boolean v2, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v2, :cond_0

    .line 339
    sget-object v1, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 345
    .local v1, "pool":[Landroid/os/Parcel;
    :goto_0
    monitor-enter v1

    .line 346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    .line 347
    :try_start_0
    aget-object v2, v1, v0

    if-nez v2, :cond_1

    .line 348
    aput-object p0, v1, v0

    .line 349
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :goto_2
    return-void

    .line 341
    .end local v0    # "i":I
    .end local v1    # "pool":[Landroid/os/Parcel;
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 342
    sget-object v1, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .restart local v1    # "pool":[Landroid/os/Parcel;
    goto :goto_0

    .line 346
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 352
    :cond_2
    :try_start_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final restoreAllowFds(Z)V
    .locals 2
    .param p1, "lastValue"    # Z

    .prologue
    .line 432
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeRestoreAllowFds(JZ)V

    .line 433
    return-void
.end method

.method public final setDataCapacity(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 422
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataCapacity(JI)V

    .line 423
    return-void
.end method

.method public final setDataPosition(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 411
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataPosition(JI)V

    .line 412
    return-void
.end method

.method public final setDataSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 402
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataSize(JI)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    .line 403
    return-void
.end method

.method public final unmarshall([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 454
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeUnmarshall(J[BII)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    .line 455
    return-void
.end method

.method public final writeArray([Ljava/lang/Object;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/Object;

    .prologue
    .line 775
    if-nez p1, :cond_1

    .line 776
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    :cond_0
    return-void

    .line 779
    :cond_1
    array-length v0, p1

    .line 780
    .local v0, "N":I
    const/4 v1, 0x0

    .line 781
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    :goto_0
    if-ge v1, v0, :cond_0

    .line 783
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 784
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public writeArrayMap(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 703
    .local p1, "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArrayMapInternal(Landroid/util/ArrayMap;)V

    .line 704
    return-void
.end method

.method writeArrayMapInternal(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 676
    .local p1, "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 677
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    :cond_0
    return-void

    .line 680
    :cond_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 681
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 690
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 688
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeBinderArray([Landroid/os/IBinder;)V
    .locals 3
    .param p1, "val"    # [Landroid/os/IBinder;

    .prologue
    .line 1083
    if-eqz p1, :cond_0

    .line 1084
    array-length v0, p1

    .line 1085
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1087
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1086
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1090
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1092
    :cond_1
    return-void
.end method

.method public final writeBinderList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1219
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    if-nez p1, :cond_1

    .line 1220
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1230
    :cond_0
    return-void

    .line 1223
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1224
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1225
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1227
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeBlob([B)V
    .locals 2
    .param p1, "b"    # [B

    .prologue
    const/4 v1, 0x0

    .line 514
    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Parcel;->writeBlob([BII)V

    .line 515
    return-void

    :cond_0
    move v0, v1

    .line 514
    goto :goto_0
.end method

.method public final writeBlob([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 527
    if-nez p1, :cond_0

    .line 528
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    :goto_0
    return-void

    .line 531
    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 532
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeWriteBlob(J[BII)V

    goto :goto_0
.end method

.method public final writeBooleanArray([Z)V
    .locals 3
    .param p1, "val"    # [Z

    .prologue
    .line 825
    if-eqz p1, :cond_1

    .line 826
    array-length v0, p1

    .line 827
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 829
    aget-boolean v2, p1, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 829
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 832
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    :cond_2
    return-void
.end method

.method public final writeBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "val"    # Landroid/os/Bundle;

    .prologue
    .line 711
    if-nez p1, :cond_0

    .line 712
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    :goto_0
    return-void

    .line 716
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public final writeByte(B)V
    .locals 0
    .param p1, "val"    # B

    .prologue
    .line 636
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    return-void
.end method

.method public final writeByteArray([B)V
    .locals 2
    .param p1, "b"    # [B

    .prologue
    const/4 v1, 0x0

    .line 487
    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 488
    return-void

    :cond_0
    move v0, v1

    .line 487
    goto :goto_0
.end method

.method public final writeByteArray([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 498
    if-nez p1, :cond_0

    .line 499
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 503
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeWriteByteArray(J[BII)V

    goto :goto_0
.end method

.method public final writeCharArray([C)V
    .locals 3
    .param p1, "val"    # [C

    .prologue
    .line 864
    if-eqz p1, :cond_0

    .line 865
    array-length v0, p1

    .line 866
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 868
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 871
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 873
    :cond_1
    return-void
.end method

.method public final writeCharSequence(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/CharSequence;

    .prologue
    .line 581
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 582
    return-void
.end method

.method public final writeCharSequenceArray([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/CharSequence;

    .prologue
    .line 1098
    if-eqz p1, :cond_0

    .line 1099
    array-length v0, p1

    .line 1100
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1101
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1102
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 1101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1105
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1107
    :cond_1
    return-void
.end method

.method public final writeCharSequenceList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1113
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_0

    .line 1114
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1115
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1116
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1117
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 1116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1120
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1122
    :cond_1
    return-void
.end method

.method public final writeDouble(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 564
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeWriteDouble(JD)V

    .line 565
    return-void
.end method

.method public final writeDoubleArray([D)V
    .locals 4
    .param p1, "val"    # [D

    .prologue
    .line 1010
    if-eqz p1, :cond_0

    .line 1011
    array-length v0, p1

    .line 1012
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1013
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1014
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1013
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1017
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    :cond_1
    return-void
.end method

.method public final writeException(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1503
    invoke-static {p1}, Landroid/os/Parcel;->getExceptionCode(Ljava/lang/Throwable;)I

    move-result v1

    .line 1504
    .local v1, "code":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1505
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 1506
    if-nez v1, :cond_1

    .line 1507
    instance-of v2, p1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 1508
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    .line 1510
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1512
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1514
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "userdebug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1522
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/os/Parcel;->writeStackTraceInternal([Ljava/lang/StackTraceElement;)V

    .line 1525
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1526
    .local v0, "causeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1527
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Landroid/os/Parcel;->writeCauseInternal(Ljava/lang/Throwable;Ljava/util/Set;)V

    .line 1529
    .end local v0    # "causeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :cond_3
    return-void
.end method

.method public final writeFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "val"    # Ljava/io/FileDescriptor;

    .prologue
    .line 611
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    .line 612
    return-void
.end method

.method public final writeFloat(F)V
    .locals 2
    .param p1, "val"    # F

    .prologue
    .line 556
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFloat(JF)V

    .line 557
    return-void
.end method

.method public final writeFloatArray([F)V
    .locals 3
    .param p1, "val"    # [F

    .prologue
    .line 973
    if-eqz p1, :cond_0

    .line 974
    array-length v0, p1

    .line 975
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 976
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 977
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 976
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 980
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    :cond_1
    return-void
.end method

.method public final writeInt(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 540
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteInt(JI)V

    .line 541
    return-void
.end method

.method public final writeIntArray([I)V
    .locals 3
    .param p1, "val"    # [I

    .prologue
    .line 900
    if-eqz p1, :cond_0

    .line 901
    array-length v0, p1

    .line 902
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 903
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 904
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 903
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 907
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    :cond_1
    return-void
.end method

.method public final writeInterfaceToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 474
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteInterfaceToken(JLjava/lang/String;)V

    .line 475
    return-void
.end method

.method public final writeList(Ljava/util/List;)V
    .locals 3
    .param p1, "val"    # Ljava/util/List;

    .prologue
    .line 756
    if-nez p1, :cond_1

    .line 757
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    :cond_0
    return-void

    .line 760
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 761
    .local v0, "N":I
    const/4 v1, 0x0

    .line 762
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    :goto_0
    if-ge v1, v0, :cond_0

    .line 764
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 765
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeLong(J)V
    .locals 3
    .param p1, "val"    # J

    .prologue
    .line 548
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeWriteLong(JJ)V

    .line 549
    return-void
.end method

.method public final writeLongArray([J)V
    .locals 4
    .param p1, "val"    # [J

    .prologue
    .line 936
    if-eqz p1, :cond_0

    .line 937
    array-length v0, p1

    .line 938
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 940
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 939
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 943
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    :cond_1
    return-void
.end method

.method public final writeMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "val"    # Ljava/util/Map;

    .prologue
    .line 651
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMapInternal(Ljava/util/Map;)V

    .line 652
    return-void
.end method

.method writeMapInternal(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 659
    .local p1, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 660
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    :cond_0
    return-void

    .line 663
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 664
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 666
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 667
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final writeNoException()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1552
    invoke-static {}, Landroid/os/StrictMode;->hasGatheredViolations()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1553
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1554
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1555
    .local v1, "sizePosition":I
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1556
    invoke-static {p0}, Landroid/os/StrictMode;->writeGatheredViolationsToParcel(Landroid/os/Parcel;)V

    .line 1557
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1558
    .local v0, "payloadPosition":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1559
    sub-int v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1560
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1564
    .end local v0    # "payloadPosition":I
    .end local v1    # "sizePosition":I
    :goto_0
    return-void

    .line 1562
    :cond_0
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public final writeParcelable(Landroid/os/Parcelable;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcelable;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 1437
    if-nez p1, :cond_0

    .line 1438
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1443
    :goto_0
    return-void

    .line 1441
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeParcelableCreator(Landroid/os/Parcelable;)V

    .line 1442
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public final writeParcelableArray([Landroid/os/Parcelable;I)V
    .locals 3
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 2262
    .local p1, "value":[Landroid/os/Parcelable;, "[TT;"
    if-eqz p1, :cond_0

    .line 2263
    array-length v0, p1

    .line 2264
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2265
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2266
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2269
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2271
    :cond_1
    return-void
.end method

.method public final writeParcelableCreator(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcelable;

    .prologue
    .line 1447
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1448
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1449
    return-void
.end method

.method public final writePersistableBundle(Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "val"    # Landroid/os/PersistableBundle;

    .prologue
    .line 724
    if-nez p1, :cond_0

    .line 725
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    :goto_0
    return-void

    .line 729
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public final writeSerializable(Ljava/io/Serializable;)V
    .locals 7
    .param p1, "s"    # Ljava/io/Serializable;

    .prologue
    .line 1458
    if-nez p1, :cond_0

    .line 1459
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1477
    :goto_0
    return-void

    .line 1462
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1463
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1465
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1467
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1468
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1469
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 1471
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1472
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    .line 1473
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public final writeSize(Landroid/util/Size;)V
    .locals 1
    .param p1, "val"    # Landroid/util/Size;

    .prologue
    .line 737
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    return-void
.end method

.method public final writeSizeF(Landroid/util/SizeF;)V
    .locals 1
    .param p1, "val"    # Landroid/util/SizeF;

    .prologue
    .line 746
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 747
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 748
    return-void
.end method

.method public final writeSparseArray(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 795
    .local p1, "val":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 796
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    :cond_0
    return-void

    .line 799
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 800
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    const/4 v1, 0x0

    .line 802
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 803
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 805
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V
    .locals 3
    .param p1, "val"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 810
    if-nez p1, :cond_1

    .line 811
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    :cond_0
    return-void

    .line 814
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 815
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    const/4 v1, 0x0

    .line 817
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 818
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 820
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 819
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final writeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 572
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteString(JLjava/lang/String;)V

    .line 573
    return-void
.end method

.method public final writeStringArray([Ljava/lang/String;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/String;

    .prologue
    .line 1047
    if-eqz p1, :cond_0

    .line 1048
    array-length v0, p1

    .line 1049
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1051
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1050
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1054
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1056
    :cond_1
    return-void
.end method

.method public final writeStringList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1194
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 1195
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1205
    :cond_0
    return-void

    .line 1198
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1199
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1200
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1201
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1202
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeStrongBinder(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "val"    # Landroid/os/IBinder;

    .prologue
    .line 589
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteStrongBinder(JLandroid/os/IBinder;)V

    .line 590
    return-void
.end method

.method public final writeStrongInterface(Landroid/os/IInterface;)V
    .locals 1
    .param p1, "val"    # Landroid/os/IInterface;

    .prologue
    .line 597
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 598
    return-void

    .line 597
    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public final writeTypedArray([Landroid/os/Parcelable;I)V
    .locals 4
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 1252
    .local p1, "val":[Landroid/os/Parcelable;, "[TT;"
    if-eqz p1, :cond_1

    .line 1253
    array-length v0, p1

    .line 1254
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1255
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1256
    aget-object v2, p1, v1

    .line 1257
    .local v2, "item":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_0

    .line 1258
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1259
    invoke-interface {v2, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1255
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1261
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1265
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/os/Parcelable;, "TT;"
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1267
    :cond_2
    return-void
.end method

.method public final writeTypedList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    .line 1163
    if-nez p1, :cond_1

    .line 1164
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1180
    :cond_0
    return-void

    .line 1167
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1168
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1169
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1170
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1171
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 1172
    .local v2, "item":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_2

    .line 1173
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1174
    invoke-interface {v2, p0, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1178
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 1179
    goto :goto_0

    .line 1176
    :cond_2
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public final writeTypedObject(Landroid/os/Parcelable;I)V
    .locals 1
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(TT;I)V"
        }
    .end annotation

    .prologue
    .line 1279
    .local p1, "val":Landroid/os/Parcelable;, "TT;"
    if-eqz p1, :cond_0

    .line 1280
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1281
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1285
    :goto_0
    return-void

    .line 1283
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public final writeValue(Ljava/lang/Object;)V
    .locals 4
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1331
    if-nez p1, :cond_0

    .line 1332
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1426
    .end local p1    # "v":Ljava/lang/Object;
    :goto_0
    return-void

    .line 1333
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_0
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1334
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1335
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1336
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 1337
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1338
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1339
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_2
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 1340
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1341
    check-cast p1, Ljava/util/Map;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_0

    .line 1342
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_3
    instance-of v3, p1, Landroid/os/Bundle;

    if-eqz v3, :cond_4

    .line 1344
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1345
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1346
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_4
    instance-of v3, p1, Landroid/os/Parcelable;

    if-eqz v3, :cond_5

    .line 1347
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1348
    check-cast p1, Landroid/os/Parcelable;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 1349
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_5
    instance-of v3, p1, Ljava/lang/Short;

    if-eqz v3, :cond_6

    .line 1350
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1351
    check-cast p1, Ljava/lang/Short;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1352
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_6
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_7

    .line 1353
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1354
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 1355
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_7
    instance-of v3, p1, Ljava/lang/Float;

    if-eqz v3, :cond_8

    .line 1356
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1357
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 1358
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_8
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_9

    .line 1359
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1360
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_0

    .line 1361
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_9
    instance-of v3, p1, Ljava/lang/Boolean;

    if-eqz v3, :cond_b

    .line 1362
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1363
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    :goto_1
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_a
    move v1, v2

    goto :goto_1

    .line 1364
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_b
    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_c

    .line 1366
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1367
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1368
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_c
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_d

    .line 1369
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1370
    check-cast p1, Ljava/util/List;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1371
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_d
    instance-of v1, p1, Landroid/util/SparseArray;

    if-eqz v1, :cond_e

    .line 1372
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1373
    check-cast p1, Landroid/util/SparseArray;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    goto/16 :goto_0

    .line 1374
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_e
    instance-of v1, p1, [Z

    if-eqz v1, :cond_f

    .line 1375
    const/16 v1, 0x17

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1376
    check-cast p1, [Z

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_0

    .line 1377
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_f
    instance-of v1, p1, [B

    if-eqz v1, :cond_10

    .line 1378
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1379
    check-cast p1, [B

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 1380
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_10
    instance-of v1, p1, [Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 1381
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1382
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1383
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_11
    instance-of v1, p1, [Ljava/lang/CharSequence;

    if-eqz v1, :cond_12

    .line 1385
    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1386
    check-cast p1, [Ljava/lang/CharSequence;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1387
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_12
    instance-of v1, p1, Landroid/os/IBinder;

    if-eqz v1, :cond_13

    .line 1388
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1389
    check-cast p1, Landroid/os/IBinder;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 1390
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_13
    instance-of v1, p1, [Landroid/os/Parcelable;

    if-eqz v1, :cond_14

    .line 1391
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1392
    check-cast p1, [Landroid/os/Parcelable;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1393
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_14
    instance-of v1, p1, [I

    if-eqz v1, :cond_15

    .line 1394
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    check-cast p1, [I

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 1396
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_15
    instance-of v1, p1, [J

    if-eqz v1, :cond_16

    .line 1397
    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1398
    check-cast p1, [J

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [J

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_0

    .line 1399
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_16
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_17

    .line 1400
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1402
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_17
    instance-of v1, p1, Landroid/os/PersistableBundle;

    if-eqz v1, :cond_18

    .line 1403
    const/16 v1, 0x19

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    check-cast p1, Landroid/os/PersistableBundle;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    goto/16 :goto_0

    .line 1405
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_18
    instance-of v1, p1, Landroid/util/Size;

    if-eqz v1, :cond_19

    .line 1406
    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1407
    check-cast p1, Landroid/util/Size;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    goto/16 :goto_0

    .line 1408
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_19
    instance-of v1, p1, Landroid/util/SizeF;

    if-eqz v1, :cond_1a

    .line 1409
    const/16 v1, 0x1b

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1410
    check-cast p1, Landroid/util/SizeF;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSizeF(Landroid/util/SizeF;)V

    goto/16 :goto_0

    .line 1412
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1413
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_1b

    .line 1416
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1417
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1418
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1b
    instance-of v1, p1, Ljava/io/Serializable;

    if-eqz v1, :cond_1c

    .line 1420
    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1421
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto/16 :goto_0

    .line 1423
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1c
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parcel: unable to marshal value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
