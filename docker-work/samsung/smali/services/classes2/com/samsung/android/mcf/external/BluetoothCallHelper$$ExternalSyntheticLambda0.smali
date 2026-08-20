.class public final synthetic Lcom/samsung/android/mcf/external/BluetoothCallHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/external/BluetoothCallHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/external/BluetoothCallHelper;ILcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/external/BluetoothCallHelper;

    iput p2, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/external/BluetoothCallHelper;

    iget v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->$r8$lambda$74TW_aLMfFvP_dKBIKpTVG6dG1c(Lcom/samsung/android/mcf/external/BluetoothCallHelper;ILcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;)V

    return-void
.end method
