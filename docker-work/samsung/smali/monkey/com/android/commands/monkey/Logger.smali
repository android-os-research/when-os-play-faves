.class public abstract Lcom/android/commands/monkey/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Monkey"

.field public static err:Lcom/android/commands/monkey/Logger;

.field public static logcat:Z

.field public static out:Lcom/android/commands/monkey/Logger;

.field public static stdout:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/android/commands/monkey/Logger$1;

    invoke-direct {v0}, Lcom/android/commands/monkey/Logger$1;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    .line 34
    new-instance v0, Lcom/android/commands/monkey/Logger$2;

    invoke-direct {v0}, Lcom/android/commands/monkey/Logger$2;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/commands/monkey/Logger;->stdout:Z

    .line 46
    sput-boolean v0, Lcom/android/commands/monkey/Logger;->logcat:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 57
    sget-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v0, p0}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public abstract println(Ljava/lang/String;)V
.end method
