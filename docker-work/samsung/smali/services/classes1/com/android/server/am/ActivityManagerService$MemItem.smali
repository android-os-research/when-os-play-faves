.class public final Lcom/android/server/am/ActivityManagerService$MemItem;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemItem"
.end annotation


# instance fields
.field public final hasActivities:Z

.field public final id:I

.field public final isProc:Z

.field public final label:Ljava/lang/String;

.field public final mRss:J

.field public final pss:J

.field public final shortLabel:Ljava/lang/String;

.field public subitems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityManagerService$MemItem;",
            ">;"
        }
    .end annotation
.end field

.field public final swapPss:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJI)V
    .registers 11

    .line 13121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13122
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 13123
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 13124
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 13125
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 13126
    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->swapPss:J

    .line 13127
    iput-wide p7, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    .line 13128
    iput p9, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 13129
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJIZ)V
    .registers 12

    .line 13110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13111
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 13112
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 13113
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 13114
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 13115
    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->swapPss:J

    .line 13116
    iput-wide p7, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    .line 13117
    iput p9, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 13118
    iput-boolean p10, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    return-void
.end method
