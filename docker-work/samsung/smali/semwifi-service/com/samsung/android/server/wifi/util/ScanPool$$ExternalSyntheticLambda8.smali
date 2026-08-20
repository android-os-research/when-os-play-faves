.class public final synthetic Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/util/ScanPool;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/util/ScanPool;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->$r8$lambda$XJmU2f67VUclXkKgIz9QyubdL88(Lcom/samsung/android/server/wifi/util/ScanPool;Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method
