.class public Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;
.super Ljava/lang/Object;
.source "SemQTableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedMembers"
.end annotation


# instance fields
.field public bssidPerSsidList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public candidateApList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;",
            ">;"
        }
    .end annotation
.end field

.field public coreApList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;",
            ">;"
        }
    .end annotation
.end field

.field public forcedqai:I

.field public probationApList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;",
            ">;"
        }
    .end annotation
.end field

.field public qTableIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;",
            ">;"
        }
    .end annotation
.end field

.field public qTableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;",
            ">;"
        }
    .end annotation
.end field

.field public qai:I

.field public version:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;)V
    .registers 4

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1343b86

    .line 862
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->version:J

    .line 863
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mDefaultQAI:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->qai:I

    .line 864
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mForcedlyQAISet:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->forcedqai:I

    .line 865
    iget-object v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->qTableList:Ljava/util/ArrayList;

    .line 866
    iget-object v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableIndexList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->qTableIndexList:Ljava/util/ArrayList;

    .line 867
    iget-object v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->coreApList:Ljava/util/Map;

    .line 868
    iget-object v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->candidateApList:Ljava/util/Map;

    .line 869
    iget-object v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->probationApList:Ljava/util/Map;

    .line 870
    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->bssidPerSsidList:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->bssidPerSsidList:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public readResolve(Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;
    .registers 3

    .line 877
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;-><init>(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)V

    return-object v0
.end method
