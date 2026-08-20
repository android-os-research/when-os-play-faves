.class public final synthetic Lcom/android/server/desktopmode/PendingUiCommands$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/PendingUiCommands$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/android/server/desktopmode/PendingUiCommands$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;

    check-cast p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/PendingUiCommands;->$r8$lambda$9cwVqhRSDSymVhe_DWqX779HCZI(Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
