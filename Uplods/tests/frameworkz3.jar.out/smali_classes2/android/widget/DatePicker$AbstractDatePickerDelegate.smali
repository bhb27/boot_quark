.class abstract Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/DatePicker$DatePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractDatePickerDelegate"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentLocale:Ljava/util/Locale;

.field protected mDelegator:Landroid/widget/DatePicker;

.field protected mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field protected mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;


# direct methods
.method public constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;)V
    .locals 1
    .param p1, "delegator"    # Landroid/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 508
    iput-object p2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 510
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 511
    return-void
.end method


# virtual methods
.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 533
    return-void
.end method

.method protected onValidationChanged(Z)V
    .locals 1
    .param p1, "valid"    # Z

    .prologue
    .line 526
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$ValidationCallback;->onValidationChanged(Z)V

    .line 529
    :cond_0
    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 514
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 516
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    .line 518
    :cond_0
    return-void
.end method

.method public setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/widget/DatePicker$ValidationCallback;

    .prologue
    .line 522
    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    .line 523
    return-void
.end method