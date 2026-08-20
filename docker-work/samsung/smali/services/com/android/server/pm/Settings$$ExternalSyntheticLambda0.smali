.class public final synthetic Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/Settings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/Settings;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/Settings;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p0

    return-object p0
.end method
