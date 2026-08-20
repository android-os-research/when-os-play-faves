.class public final synthetic Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IndentingPrintWriter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda10;->f$0:Landroid/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda10;->f$0:Landroid/util/IndentingPrintWriter;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
