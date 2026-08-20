.class public Lcom/android/server/power/PowerManagerService$Injector$2;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/PowerManagerService$Clock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService$Injector;->createClock()Lcom/android/server/power/PowerManagerService$Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService$Injector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService$Injector;)V
    .registers 2

    .line 1436
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$Injector$2;->this$0:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public elapsedRealtime()J
    .registers 3

    .line 1444
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public uptimeMillis()J
    .registers 3

    .line 1439
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
