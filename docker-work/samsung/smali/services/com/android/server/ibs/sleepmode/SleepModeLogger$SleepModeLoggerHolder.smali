.class public Lcom/android/server/ibs/sleepmode/SleepModeLogger$SleepModeLoggerHolder;
.super Ljava/lang/Object;
.source "SleepModeLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/sleepmode/SleepModeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SleepModeLoggerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/ibs/sleepmode/SleepModeLogger;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/ibs/sleepmode/SleepModeLogger;
    .registers 1

    sget-object v0, Lcom/android/server/ibs/sleepmode/SleepModeLogger$SleepModeLoggerHolder;->INSTANCE:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;-><init>(Lcom/android/server/ibs/sleepmode/SleepModeLogger-IA;)V

    sput-object v0, Lcom/android/server/ibs/sleepmode/SleepModeLogger$SleepModeLoggerHolder;->INSTANCE:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
