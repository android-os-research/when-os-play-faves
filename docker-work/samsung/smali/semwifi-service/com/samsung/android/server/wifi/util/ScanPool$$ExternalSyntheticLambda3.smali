.class public final synthetic Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/Set;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/util/ScanPool;->$r8$lambda$X6oK_Ls6kaOYnU-hOi4cYgNTMdk(Ljava/util/List;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
