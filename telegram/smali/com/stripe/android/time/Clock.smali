.class public Lcom/stripe/android/time/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# static fields
.field private static instance:Lcom/stripe/android/time/Clock;


# instance fields
.field protected calendarInstance:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private _calendarInstance()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/stripe/android/time/Clock;->calendarInstance:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stripe/android/time/Clock;->calendarInstance:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCalendarInstance()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/stripe/android/time/Clock;->getInstance()Lcom/stripe/android/time/Clock;

    move-result-object v0

    invoke-direct {v0}, Lcom/stripe/android/time/Clock;->_calendarInstance()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method protected static getInstance()Lcom/stripe/android/time/Clock;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/stripe/android/time/Clock;->instance:Lcom/stripe/android/time/Clock;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/stripe/android/time/Clock;

    invoke-direct {v0}, Lcom/stripe/android/time/Clock;-><init>()V

    sput-object v0, Lcom/stripe/android/time/Clock;->instance:Lcom/stripe/android/time/Clock;

    .line 13
    :cond_0
    sget-object v0, Lcom/stripe/android/time/Clock;->instance:Lcom/stripe/android/time/Clock;

    return-object v0
.end method
