.class public abstract Lcom/android/commands/monkey/MonkeyUtils;
.super Ljava/lang/Object;
.source "MonkeyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;
    }
.end annotation


# static fields
.field private static final DATE:Ljava/util/Date;

.field private static final DATE_FORMATTER:Ljava/text/SimpleDateFormat;

.field private static sFilter:Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/MonkeyUtils;->DATE:Ljava/util/Date;

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/monkey/MonkeyUtils;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;
    .registers 2

    .line 46
    sget-object v0, Lcom/android/commands/monkey/MonkeyUtils;->sFilter:Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    if-nez v0, :cond_c

    .line 47
    new-instance v0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;-><init>(Lcom/android/commands/monkey/MonkeyUtils$PackageFilter-IA;)V

    sput-object v0, Lcom/android/commands/monkey/MonkeyUtils;->sFilter:Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    .line 49
    :cond_c
    sget-object v0, Lcom/android/commands/monkey/MonkeyUtils;->sFilter:Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    return-object v0
.end method

.method public static declared-synchronized toCalendarTime(J)Ljava/lang/String;
    .registers 5
    .param p0, "time"    # J

    const-class v0, Lcom/android/commands/monkey/MonkeyUtils;

    monitor-enter v0

    .line 41
    :try_start_3
    sget-object v1, Lcom/android/commands/monkey/MonkeyUtils;->DATE:Ljava/util/Date;

    invoke-virtual {v1, p0, p1}, Ljava/util/Date;->setTime(J)V

    .line 42
    sget-object v2, Lcom/android/commands/monkey/MonkeyUtils;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v0

    return-object v1

    .line 40
    .end local p0    # "time":J
    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method
