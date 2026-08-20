.class public final synthetic Lcom/android/server/pm/Settings$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/utils/WatchedArrayMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/WatchedArrayMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/utils/WatchedArrayMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/utils/WatchedArrayMap;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
