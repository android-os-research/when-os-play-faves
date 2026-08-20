.class public final synthetic Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt;->$r8$lambda$_Ow1B4bqlSx7mGUFZ5bIVpY76eE(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;)V

    return-void
.end method
