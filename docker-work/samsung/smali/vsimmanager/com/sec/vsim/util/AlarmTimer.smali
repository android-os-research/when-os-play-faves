.class public Lcom/sec/vsim/util/AlarmTimer;
.super Ljava/lang/Object;
.source "AlarmTimer.java"


# static fields
.field private static final BUILD_VERSION_CODE_JELLY_BEAN_MR2:I = 0x12

.field private static final BUILD_VERSION_CODE_M:I = 0x17

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-class v0, Lcom/sec/vsim/util/AlarmTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/util/AlarmTimer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;Landroid/app/PendingIntent;J)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pIntent"    # Landroid/app/PendingIntent;
    .param p2, "millis"    # J

    .line 27
    sget-object v0, Lcom/sec/vsim/util/AlarmTimer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " millis "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    nop

    .line 30
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 32
    .local v0, "am":Landroid/app/AlarmManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x2

    const/16 v4, 0x12

    if-gt v1, v4, :cond_36

    .line 33
    invoke-virtual {v0, v3, p2, p3, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 34
    return-void

    .line 38
    :cond_36
    const/4 v1, 0x0

    .line 39
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_37
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-ge v4, v5, :cond_58

    .line 40
    const-class v4, Landroid/app/AlarmManager;

    const-string v5, "setExact"

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    const-class v10, Landroid/app/PendingIntent;

    aput-object v10, v9, v3

    invoke-virtual {v4, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v1, v4

    goto :goto_6f

    .line 45
    :cond_58
    const-class v4, Landroid/app/AlarmManager;

    const-string v5, "setExactAndAllowWhileIdle"

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    const-class v10, Landroid/app/PendingIntent;

    aput-object v10, v9, v3

    invoke-virtual {v4, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v1, v4

    .line 50
    :goto_6f
    if-eqz v1, :cond_89

    .line 51
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    add-long/2addr v7, p2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p1, v4, v3

    .line 51
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_89
    .catch Ljava/lang/NoSuchMethodException; {:try_start_37 .. :try_end_89} :catch_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_89} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_37 .. :try_end_89} :catch_8a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_37 .. :try_end_89} :catch_8a

    .line 57
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_89
    goto :goto_a5

    .line 54
    :catch_8a
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sec/vsim/util/AlarmTimer;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_a5
    return-void
.end method

.method public static stop(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pIntent"    # Landroid/app/PendingIntent;

    .line 66
    sget-object v0, Lcom/sec/vsim/util/AlarmTimer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 69
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 70
    return-void
.end method
