.class public final synthetic Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1$$ExternalSyntheticLambda0;->f$0:Z

    check-cast p1, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1;->$r8$lambda$UK0XJe9wFtlmv-q9cLFIctes4nk(ZLcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V

    return-void
.end method
