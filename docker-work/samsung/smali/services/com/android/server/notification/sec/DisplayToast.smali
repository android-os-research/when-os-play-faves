.class public Lcom/android/server/notification/sec/DisplayToast;
.super Ljava/lang/Object;
.source "DisplayToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/sec/DisplayToast$ToastDumpReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_DELETE_MOBILE_DATA_FILES:Ljava/lang/String; = "com.samsung.android.mobiledoctor.DELETEMOBILEDATAFILES"

.field public static final ACTION_GET_MOBILE_DATA_FILES:Ljava/lang/String; = "com.samsung.android.mobiledoctor.GETMOBILEDATAFILES"

.field public static final ACTION_REQUEST_INTERNET_LOG:Ljava/lang/String; = "com.samsung.android.action.ACTION_REQUEST_INTERNET_LOG"

.field public static final ACTION_TOAST_DUMP_LOG:Ljava/lang/String; = "com.samsung.android.action.ACTION_TOAST_DUMP_LOG"

.field public static final DATE_FORMAT:Ljava/lang/String; = "yy-MM-dd_HH:mm:ss"

.field public static final ENABLE_SAVE_FILE:Z = false

.field public static final EXTRA_TOAST_DUMP_CALLER_PACKAGE:Ljava/lang/String; = "sem_toast_caller_pkg"

.field public static final EXTRA_TOAST_DUMP_CALLER_UID:Ljava/lang/String; = "sem_toast_caller_uid"

.field public static final EXTRA_TOAST_DUMP_DATE:Ljava/lang/String; = "sem_toast_date"

.field public static final EXTRA_TOAST_DUMP_MESSAGE:Ljava/lang/String; = "sem_toast_message"

.field public static final LOG_FILE_PATH:Ljava/lang/String; = "/data/log/ToastLog.txt"

.field public static final MAX_TOAST_DUMP_COUNT:I = 0x1e

.field public static final MAX_TOAST_MESSAGE_LENGTH:I = 0x64

.field public static final TAG:Ljava/lang/String; = "ToastLog"

.field public static sLogMsg:Lcom/android/server/notification/sec/DisplayToast;


# instance fields
.field public filter:Landroid/content/IntentFilter;

.field public logList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mMessage:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mReceiver:Lcom/android/server/notification/sec/DisplayToast$ToastDumpReceiver;

.field public mUid:I

.field public outputContents:Ljava/lang/StringBuffer;

.field public sdfNow:Ljava/text/SimpleDateFormat;


# direct methods
.method public static bridge synthetic -$$Nest$fgetlogList(Lcom/android/server/notification/sec/DisplayToast;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/sec/DisplayToast;->logList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/notification/sec/DisplayToast;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/sec/DisplayToast;->dump()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/android/server/notification/sec/DisplayToast;

    invoke-direct {v0}, Lcom/android/server/notification/sec/DisplayToast;-><init>()V

    sput-object v0, Lcom/android/server/notification/sec/DisplayToast;->sLogMsg:Lcom/android/server/notification/sec/DisplayToast;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/sec/DisplayToast;->logList:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/sec/DisplayToast;->outputContents:Ljava/lang/StringBuffer;

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yy-MM-dd_HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/sec/DisplayToast;->sdfNow:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static out(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .registers 5

    .line 62
    sget-object v0, Lcom/android/server/notification/sec/DisplayToast;->sLogMsg:Lcom/android/server/notification/sec/DisplayToast;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/notification/sec/DisplayToast;->outFile(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final addToLogList(Ljava/lang/String;)V
    .registers 5

    .line 66
    iget-object v0, p0, Lcom/android/server/notification/sec/DisplayToast;->logList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 67
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/sec/DisplayToast;->logList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_19

    .line 68
    iget-object v1, p0, Lcom/android/server/notification/sec/DisplayToast;->logList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 69
    iget-object p0, p0, Lcom/android/server/notification/sec/DisplayToast;->logList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 71
    :cond_19
    iget-object p0, p0, Lcom/android/server/notification/sec/DisplayToast;->logList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final dump()V
    .registers 2

    .line 110
    new-instance v0, Lcom/android/server/notification/sec/DisplayToast$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/sec/DisplayToast$1;-><init>(Lcom/android/server/notification/sec/DisplayToast;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final outFile(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .registers 5

    .line 77
    iput-object p1, p0, Lcom/android/server/notification/sec/DisplayToast;->mPackageName:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/android/server/notification/sec/DisplayToast;->mMessage:Ljava/lang/String;

    .line 79
    iput p3, p0, Lcom/android/server/notification/sec/DisplayToast;->mUid:I

    .line 80
    iput-object p4, p0, Lcom/android/server/notification/sec/DisplayToast;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 83
    iget-object p3, p0, Lcom/android/server/notification/sec/DisplayToast;->sdfNow:Ljava/text/SimpleDateFormat;

    new-instance p4, Ljava/util/Date;

    invoke-direct {p4, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/notification/sec/DisplayToast;->sendIntentForToastDumpLog(Ljava/lang/String;)V

    return-void
.end method

.method public final sendIntentForToastDumpLog(Ljava/lang/String;)V
    .registers 5

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.action.ACTION_TOAST_DUMP_LOG"

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "sem_toast_date"

    .line 145
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object p1, p0, Lcom/android/server/notification/sec/DisplayToast;->mPackageName:Ljava/lang/String;

    const-string/jumbo v1, "sem_toast_caller_pkg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget p1, p0, Lcom/android/server/notification/sec/DisplayToast;->mUid:I

    const-string/jumbo v1, "sem_toast_caller_uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    iget-object p1, p0, Lcom/android/server/notification/sec/DisplayToast;->mMessage:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_38

    .line 151
    iget-object p1, p0, Lcom/android/server/notification/sec/DisplayToast;->mMessage:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x63

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_38
    const-string/jumbo v1, "sem_toast_message"

    .line 153
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    :try_start_3e
    iget-object p0, p0, Lcom/android/server/notification/sec/DisplayToast;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_44

    goto :goto_4d

    :catch_44
    move-exception p0

    const-string p1, "ToastLog"

    const-string/jumbo v0, "sendBroadcast fails!!"

    .line 158
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4d
    return-void
.end method
