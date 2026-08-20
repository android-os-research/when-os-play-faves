.class public Lcom/android/server/devicepolicy/FactoryResetter$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "FactoryResetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/FactoryResetter;->factoryReset()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/FactoryResetter;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/FactoryResetter;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$1;->this$0:Lcom/android/server/devicepolicy/FactoryResetter;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/android/server/devicepolicy/FactoryResetter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter$1;->this$0:Lcom/android/server/devicepolicy/FactoryResetter;

    invoke-static {v0}, Lcom/android/server/devicepolicy/FactoryResetter;->-$$Nest$fgetmSafetyChecker(Lcom/android/server/devicepolicy/FactoryResetter;)Landroid/app/admin/DevicePolicySafetyChecker;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "Factory reset confirmed by %s, proceeding"

    invoke-static {p1, v0, p2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :try_start_15
    iget-object p0, p0, Lcom/android/server/devicepolicy/FactoryResetter$1;->this$0:Lcom/android/server/devicepolicy/FactoryResetter;

    invoke-static {p0}, Lcom/android/server/devicepolicy/FactoryResetter;->-$$Nest$mfactoryResetInternalUnchecked(Lcom/android/server/devicepolicy/FactoryResetter;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_27

    :catch_1b
    move-exception p0

    .line 83
    invoke-static {}, Lcom/android/server/devicepolicy/FactoryResetter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "IOException calling underlying systems"

    invoke-static {p1, p0, v0, p2}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_27
    return-void
.end method
