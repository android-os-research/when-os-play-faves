.class public Lcom/android/server/power/ShutdownThread$4;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownHermes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ShutdownThread;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownThread;)V
    .registers 2

    .line 970
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$4;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 972
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$4;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->-$$Nest$fgetmContext(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "sepunion"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sepunion/SemUnionManager;

    const-string v0, "!@Shutdown HermesService is skipped um is null."

    const-string v1, "ShutdownThread"

    if-eqz p0, :cond_33

    :try_start_15
    const-string v2, "HermesService"

    .line 975
    invoke-virtual {p0, v2}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 977
    invoke-static {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 979
    invoke-interface {p0}, Lcom/samsung/android/service/HermesService/IHermesService;->hermesTerminateService()I

    goto :goto_3c

    :cond_27
    const-string p0, "!@Shutdown HermesService is skipped."

    .line 981
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 984
    :cond_2d
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :catch_31
    move-exception p0

    goto :goto_37

    .line 987
    :cond_33
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_36} :catch_31

    goto :goto_3c

    :goto_37
    const-string v0, "!@Exception during hermesservice shutdown"

    .line 990
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3c
    return-void
.end method
