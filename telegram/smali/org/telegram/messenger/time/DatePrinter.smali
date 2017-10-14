.class public interface abstract Lorg/telegram/messenger/time/DatePrinter;
.super Ljava/lang/Object;
.source "DatePrinter.java"


# virtual methods
.method public abstract format(J)Ljava/lang/String;
.end method

.method public abstract format(Ljava/util/Calendar;)Ljava/lang/String;
.end method

.method public abstract format(Ljava/util/Date;)Ljava/lang/String;
.end method

.method public abstract format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getPattern()Ljava/lang/String;
.end method

.method public abstract getTimeZone()Ljava/util/TimeZone;
.end method
