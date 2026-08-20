.class public Lcom/android/server/wm/RemoteAppController$CallerInfo;
.super Ljava/lang/Object;
.source "RemoteAppController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RemoteAppController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallerInfo"
.end annotation


# instance fields
.field public isResolver:Z

.field public launchedFromFeatureId:Ljava/lang/String;

.field public launchedFromPackage:Ljava/lang/String;

.field public launchedFromUid:I

.field public resolvedType:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/wm/RemoteAppController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RemoteAppController;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 321
    iput-object p1, p0, Lcom/android/server/wm/RemoteAppController$CallerInfo;->this$0:Lcom/android/server/wm/RemoteAppController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iget p1, p2, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput p1, p0, Lcom/android/server/wm/RemoteAppController$CallerInfo;->launchedFromUid:I

    .line 323
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/RemoteAppController$CallerInfo;->launchedFromPackage:Ljava/lang/String;

    .line 324
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/RemoteAppController$CallerInfo;->launchedFromFeatureId:Ljava/lang/String;

    .line 325
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isResolverOrChildActivity()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/RemoteAppController$CallerInfo;->isResolver:Z

    .line 326
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/RemoteAppController$CallerInfo;->resolvedType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/RemoteAppController;Lcom/android/server/wm/ActivityStarter$Request;)V
    .registers 3

    .line 329
    iput-object p1, p0, Lcom/android/server/wm/RemoteAppController$CallerInfo;->this$0:Lcom/android/server/wm/RemoteAppController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iget p1, p2, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iput p1, p0, Lcom/android/server/wm/RemoteAppController$CallerInfo;->launchedFromUid:I

    .line 331
    iget-object p1, p2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/RemoteAppController$CallerInfo;->launchedFromPackage:Ljava/lang/String;

    .line 332
    iget-object p1, p2, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/RemoteAppController$CallerInfo;->launchedFromFeatureId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 333
    iput-boolean p1, p0, Lcom/android/server/wm/RemoteAppController$CallerInfo;->isResolver:Z

    .line 334
    iget-object p1, p2, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/RemoteAppController$CallerInfo;->resolvedType:Ljava/lang/String;

    return-void
.end method
