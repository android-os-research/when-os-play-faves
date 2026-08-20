.class public Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;
.super Ljava/lang/Object;
.source "ActivityManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrCountInfo"
.end annotation


# instance fields
.field public mCnt:I

.field public mMaxCnt:I

.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceExt;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;)V
    .registers 2

    .line 1484
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1485
    iput p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    .line 1486
    iput p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mMaxCnt:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;)V

    return-void
.end method
