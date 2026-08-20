.class public final synthetic Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;

    check-cast p1, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;->$r8$lambda$I0JnbKx0g0yizKmJiO5NN2k5zeA(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;)V

    return-void
.end method
