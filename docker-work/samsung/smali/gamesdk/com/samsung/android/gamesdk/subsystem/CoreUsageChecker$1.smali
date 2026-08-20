.class Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$1;
.super Ljava/lang/Object;
.source "CoreUsageChecker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->initCpuFreqInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    .line 166
    iput-object p1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$1;->this$0:Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)I
    .registers 5
    .param p1, "p1"    # Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;
    .param p2, "p2"    # Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    .line 169
    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->name:Ljava/lang/String;
    invoke-static {p2}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$300(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$300(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 166
    check-cast p1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    check-cast p2, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$1;->compare(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)I

    move-result p1

    return p1
.end method
