.class public Lcom/android/commands/monkey/MonkeySourceNetworkVars;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkVars.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$GetVarCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$ListVarCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;,
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;
    }
.end annotation


# static fields
.field private static final VAR_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetVAR_MAP()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 61
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    .line 64
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v2, "build.board"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v2, "build.brand"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v3, "build.device"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v3, "build.display"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v3, "build.fingerprint"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v3, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v3, "build.host"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v3, "build.id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v3, "build.model"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v3, "build.product"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v3, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v3, "build.tags"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-wide v3, Landroid/os/Build;->TIME:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v2, "build.type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v2, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v2, "build.user"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v2, "build.cpu_abi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v2, "build.manufacturer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v2, "build.version.incremental"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v2, "build.version.release"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v2, "build.version.sdk"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v2, "build.version.codename"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 86
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v3, "display.width"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v3, "display.height"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 90
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 91
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    const-string v4, "display.density"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceNetworkVars$1;

    invoke-direct {v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$1;-><init>()V

    const-string v4, "am.current.package"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceNetworkVars$2;

    invoke-direct {v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$2;-><init>()V

    const-string v4, "am.current.action"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceNetworkVars$3;

    invoke-direct {v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$3;-><init>()V

    const-string v4, "am.current.comp.class"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceNetworkVars$4;

    invoke-direct {v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$4;-><init>()V

    const-string v4, "am.current.comp.package"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceNetworkVars$5;

    invoke-direct {v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$5;-><init>()V

    const-string v4, "am.current.data"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceNetworkVars$6;

    invoke-direct {v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$6;-><init>()V

    const-string v4, "am.current.categories"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceNetworkVars$7;

    invoke-direct {v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$7;-><init>()V

    const-string v4, "clock.realtime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceNetworkVars$8;

    invoke-direct {v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$8;-><init>()V

    const-string v4, "clock.uptime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceNetworkVars$9;

    invoke-direct {v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$9;-><init>()V

    const-string v4, "clock.millis"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceNetworkVars$10;

    invoke-direct {v3}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$10;-><init>()V

    const-string v4, "monkey.version"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
