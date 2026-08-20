.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->$r8$lambda$RdWpZRGdzCf4MbyCkV9TbxhAHAk(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V

    return-void
.end method
