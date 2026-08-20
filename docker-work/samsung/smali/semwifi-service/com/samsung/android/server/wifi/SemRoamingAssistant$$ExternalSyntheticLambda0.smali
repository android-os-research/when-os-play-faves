.class public final synthetic Lcom/samsung/android/server/wifi/SemRoamingAssistant$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemRoamingAssistant;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->$r8$lambda$mD5ypIIYeDKm3tDdaso-sz35pA8(Lcom/samsung/android/server/wifi/SemRoamingAssistant;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)V

    return-void
.end method
