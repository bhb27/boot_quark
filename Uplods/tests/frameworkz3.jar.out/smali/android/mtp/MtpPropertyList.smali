.class Landroid/mtp/MtpPropertyList;
.super Ljava/lang/Object;
.source "MtpPropertyList.java"


# instance fields
.field private mCount:I

.field public mDataTypes:[I

.field public mLongValues:[J

.field private mMaxCount:I

.field public mObjectHandles:[I

.field public mPropertyCodes:[I

.field public mResult:I

.field public mStringValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "maxCount"    # I
    .param p2, "result"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    .line 46
    iput p2, p0, Landroid/mtp/MtpPropertyList;->mResult:I

    .line 47
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    .line 48
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    .line 49
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    .line 51
    return-void
.end method

.method private resizeLists()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 117
    iget v5, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    iget v6, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    if-gt v5, v6, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget v5, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    .line 125
    iget v5, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v2, v5, [I

    .line 126
    .local v2, "objectHandles":[I
    iget v5, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v3, v5, [I

    .line 127
    .local v3, "propertyCodes":[I
    iget v5, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v0, v5, [I

    .line 129
    .local v0, "dataTypes":[I
    iget-object v5, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    iget-object v6, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    array-length v6, v6

    invoke-static {v5, v7, v2, v7, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 130
    iget-object v5, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    iget-object v6, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    array-length v6, v6

    invoke-static {v5, v7, v3, v7, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 131
    iget-object v5, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    iget-object v6, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    array-length v6, v6

    invoke-static {v5, v7, v0, v7, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 133
    iput-object v2, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    .line 134
    iput-object v3, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    .line 135
    iput-object v0, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    .line 137
    iget-object v5, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    if-eqz v5, :cond_2

    .line 138
    iget v5, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v1, v5, [J

    .line 139
    .local v1, "longValues":[J
    iget-object v5, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    iget-object v6, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    array-length v6, v6

    invoke-static {v5, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 140
    iput-object v1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    .line 143
    .end local v1    # "longValues":[J
    :cond_2
    iget-object v5, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 144
    iget v5, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v4, v5, [Ljava/lang/String;

    .line 145
    .local v4, "stringValues":[Ljava/lang/String;
    iget-object v5, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    iget-object v6, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iput-object v4, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public append(IIIJ)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "type"    # I
    .param p4, "value"    # J

    .prologue
    .line 54
    iget v0, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    .line 56
    .local v0, "index":I
    invoke-direct {p0}, Landroid/mtp/MtpPropertyList;->resizeLists()V

    .line 58
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    if-nez v1, :cond_0

    .line 59
    iget v1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    .line 61
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    aput p1, v1, v0

    .line 62
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aput p2, v1, v0

    .line 63
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    aput p3, v1, v0

    .line 64
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    aput-wide p4, v1, v0

    .line 65
    return-void
.end method

.method public append(IIILjava/lang/String;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "type"    # I
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 88
    iget v0, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    .line 90
    .local v0, "index":I
    invoke-direct {p0}, Landroid/mtp/MtpPropertyList;->resizeLists()V

    .line 92
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 93
    iget v1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    .line 95
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    aput p1, v1, v0

    .line 96
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aput p2, v1, v0

    .line 97
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    aput p3, v1, v0

    .line 98
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    aput-object p4, v1, v0

    .line 99
    return-void
.end method

.method public append(IILjava/lang/String;)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 68
    iget v0, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    .line 70
    .local v0, "index":I
    invoke-direct {p0}, Landroid/mtp/MtpPropertyList;->resizeLists()V

    .line 72
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 73
    iget v1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    .line 75
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    aput p1, v1, v0

    .line 76
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aput p2, v1, v0

    .line 77
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    const v2, 0xffff

    aput v2, v1, v0

    .line 78
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    aput-object p3, v1, v0

    .line 79
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    return v0
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 102
    iput p1, p0, Landroid/mtp/MtpPropertyList;->mResult:I

    .line 103
    return-void
.end method
