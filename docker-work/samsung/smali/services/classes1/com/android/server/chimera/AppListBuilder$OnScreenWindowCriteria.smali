.class public Lcom/android/server/chimera/AppListBuilder$OnScreenWindowCriteria;
.super Ljava/lang/Object;
.source "AppListBuilder.java"

# interfaces
.implements Lcom/android/server/chimera/AppListBuilder$ChimeraAppInfoCriteria;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/AppListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnScreenWindowCriteria"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/AppListBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/AppListBuilder;)V
    .registers 2

    .line 264
    iput-object p1, p0, Lcom/android/server/chimera/AppListBuilder$OnScreenWindowCriteria;->this$0:Lcom/android/server/chimera/AppListBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lcom/android/server/chimera/ChimeraAppInfo;)Z
    .registers 2

    .line 268
    iget-object p0, p0, Lcom/android/server/chimera/AppListBuilder$OnScreenWindowCriteria;->this$0:Lcom/android/server/chimera/AppListBuilder;

    iget-object p0, p0, Lcom/android/server/chimera/AppListBuilder;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {p0, p1}, Lcom/android/server/chimera/SystemRepository;->isOnScreenWindow(I)Z

    move-result p0

    return p0
.end method
