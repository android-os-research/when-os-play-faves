.class public Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;
.super Ljava/lang/Object;
.source "ActivityManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleChangedHistory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;
    }
.end annotation


# static fields
.field public static final MAX_HISTORY_COUNT:I = 0xa


# instance fields
.field public final mCallerInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDate:Ljava/util/Date;

.field public final mDateFormat:Ljava/text/SimpleDateFormat;

.field public final mHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$maddLocked(Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;Landroid/os/LocaleList;Landroid/os/LocaleList;Z)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->addLocked(Landroid/os/LocaleList;Landroid/os/LocaleList;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpLocked(Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCallerLocked(Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->setCallerLocked(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mCallerInfo:Ljava/lang/ThreadLocal;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    .line 220
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss.SSS zzz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 222
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mDate:Ljava/util/Date;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;-><init>()V

    return-void
.end method


# virtual methods
.method public final addLocked(Landroid/os/LocaleList;Landroid/os/LocaleList;Z)V
    .registers 7

    .line 264
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-nez p3, :cond_11

    .line 266
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 269
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mCallerInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , forcedUpdate : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "%s changed from %s to %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 272
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    new-instance p3, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;

    invoke-direct {p3, p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;-><init>(Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_56

    .line 275
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_56
    return-void
.end method

.method public final dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 11

    .line 229
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz p3, :cond_a

    const-string p1, "-------------------------------------------------------------------------------"

    .line 231
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    const-string p1, "ACTIVITY MANAGER LOCALE CHANGED HISTORY"

    .line 233
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1e

    const-string p0, " (nothing) "

    .line 236
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_94

    :cond_1e
    const/4 p1, 0x0

    move p3, p1

    .line 238
    :goto_20
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_94

    .line 239
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    .line 241
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const-string v2, "#%d "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;->message:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " at "

    .line 244
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 247
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mDate:Ljava/util/Date;

    iget-wide v2, v0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;->systemTimeMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 248
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 251
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;->callstack:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v2, v0

    move v3, p1

    :goto_70
    if-ge v3, v2, :cond_90

    aget-object v4, v0, v3

    if-nez v1, :cond_8b

    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8d

    :cond_8b
    add-int/lit8 v1, v1, -0x1

    :goto_8d
    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    .line 258
    :cond_90
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_20

    :cond_94
    :goto_94
    return-void
.end method

.method public final setCallerLocked(Ljava/lang/String;)V
    .registers 2

    .line 225
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mCallerInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
