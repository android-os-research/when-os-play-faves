.class Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;
.super Ljava/lang/Object;
.source "CoreUsageChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CPUPolicyInfo"
.end annotation


# instance fields
.field private count:I

.field private cur_path:Ljava/lang/String;

.field private maximum:I

.field private name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->count:I

    .line 49
    iput v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->maximum:I

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$1;

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    .line 45
    iget-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->cur_path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->cur_path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    .line 45
    iget v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->count:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->count:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    .line 45
    iget-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    .line 45
    iget v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->maximum:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->maximum:I

    return p1
.end method
