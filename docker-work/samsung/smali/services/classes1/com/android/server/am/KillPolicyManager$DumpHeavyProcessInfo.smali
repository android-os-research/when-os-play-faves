.class public Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DumpHeavyProcessInfo"
.end annotation


# instance fields
.field public memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

.field public packageName:Ljava/lang/String;

.field public packageVersion:Ljava/lang/String;

.field public processVersion:J

.field public pssUssRssInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .registers 2

    .line 2964
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
