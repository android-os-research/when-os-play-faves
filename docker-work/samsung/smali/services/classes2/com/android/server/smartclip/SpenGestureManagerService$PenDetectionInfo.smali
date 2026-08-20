.class public Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PenDetectionInfo"
.end annotation


# instance fields
.field public action:I

.field public eventTime:J

.field public penName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;-><init>()V

    return-void
.end method
