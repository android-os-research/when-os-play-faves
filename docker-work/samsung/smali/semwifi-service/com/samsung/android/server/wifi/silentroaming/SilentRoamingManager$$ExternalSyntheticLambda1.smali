.class public final synthetic Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->$r8$lambda$pJtVAsf1q1085SNBI5lfz1xdxfA(Ljava/util/List;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method
