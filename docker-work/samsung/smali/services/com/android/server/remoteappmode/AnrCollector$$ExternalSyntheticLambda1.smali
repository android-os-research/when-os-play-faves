.class public final synthetic Lcom/android/server/remoteappmode/AnrCollector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/remoteappmode/AnrCollector;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/remoteappmode/AnrCollector;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/remoteappmode/AnrCollector$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/remoteappmode/AnrCollector;

    iput-object p2, p0, Lcom/android/server/remoteappmode/AnrCollector$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/remoteappmode/AnrCollector$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/remoteappmode/AnrCollector;

    iget-object p0, p0, Lcom/android/server/remoteappmode/AnrCollector$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, p0, p1}, Lcom/android/server/remoteappmode/AnrCollector;->$r8$lambda$wPLkOxz-TGkAEYS716lJKpX47jA(Lcom/android/server/remoteappmode/AnrCollector;Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    return p0
.end method
