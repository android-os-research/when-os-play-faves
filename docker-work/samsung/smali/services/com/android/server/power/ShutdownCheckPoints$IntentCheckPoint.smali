.class public Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;
.super Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;
.source "ShutdownCheckPoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownCheckPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentCheckPoint"
.end annotation


# instance fields
.field public final mIntentName:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 319
    invoke-direct {p0, p1, p4}, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;)V

    .line 320
    iput-object p2, p0, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;->mIntentName:Ljava/lang/String;

    .line 321
    iput-object p3, p0, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dumpDetails(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "Intent: "

    .line 331
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;->mIntentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Package: "

    .line 333
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 334
    iget-object p0, p0, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getOrigin()Ljava/lang/String;
    .registers 1

    const-string p0, "INTENT"

    return-object p0
.end method
