.class public final synthetic Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->$r8$lambda$EYMJCYjog0SLqOI9mZZP5fqyxss(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method
