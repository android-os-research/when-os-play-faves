.class public Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;
.super Ljava/lang/Object;
.source "MARsComponentTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsComponentTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComponentTracker"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public calleePkgName:Ljava/lang/String;

.field public calleeUserId:I

.field public callerPkgName:Ljava/lang/String;

.field public callerUserId:I

.field public count:I

.field public currentLevel:I

.field public hostingType:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/am/mars/database/MARsComponentTracker;

.field public time:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/MARsComponentTracker;JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 100
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->this$0:Lcom/android/server/am/mars/database/MARsComponentTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-wide p2, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->time:J

    .line 102
    iput p4, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->currentLevel:I

    const/4 p1, 0x1

    .line 103
    iput p1, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->count:I

    .line 104
    iput p5, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->calleeUserId:I

    .line 105
    iput p6, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->callerUserId:I

    .line 106
    iput-object p7, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->calleePkgName:Ljava/lang/String;

    .line 107
    iput-object p8, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->callerPkgName:Ljava/lang/String;

    .line 108
    iput-object p9, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->hostingType:Ljava/lang/String;

    if-nez p10, :cond_1a

    const-string p10, "NONE"

    .line 109
    :cond_1a
    iput-object p10, p0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->action:Ljava/lang/String;

    return-void
.end method
