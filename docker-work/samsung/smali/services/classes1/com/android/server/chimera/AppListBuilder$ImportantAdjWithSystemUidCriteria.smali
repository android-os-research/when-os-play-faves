.class public Lcom/android/server/chimera/AppListBuilder$ImportantAdjWithSystemUidCriteria;
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
    name = "ImportantAdjWithSystemUidCriteria"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/AppListBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/AppListBuilder;)V
    .registers 2

    .line 305
    iput-object p1, p0, Lcom/android/server/chimera/AppListBuilder$ImportantAdjWithSystemUidCriteria;->this$0:Lcom/android/server/chimera/AppListBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lcom/android/server/chimera/ChimeraAppInfo;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
