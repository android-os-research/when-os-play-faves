.class public Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;
.super Ljava/lang/Object;
.source "ActivityManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocaleChangedEntry"
.end annotation


# instance fields
.field public final callstack:Ljava/lang/Throwable;

.field public final message:Ljava/lang/String;

.field public final systemTimeMillis:J

.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;

.field public final timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;Ljava/lang/String;)V
    .registers 5

    .line 285
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;->this$0:Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;->systemTimeMillis:J

    .line 281
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;->callstack:Ljava/lang/Throwable;

    .line 282
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;->timeZone:Ljava/util/TimeZone;

    .line 286
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;->message:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    return-void
.end method
