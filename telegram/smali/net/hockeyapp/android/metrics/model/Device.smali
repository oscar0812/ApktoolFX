.class public Lnet/hockeyapp/android/metrics/model/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lnet/hockeyapp/android/metrics/model/IJsonSerializable;
.implements Ljava/io/Serializable;


# instance fields
.field private id:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private machineName:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private network:Ljava/lang/String;

.field private networkName:Ljava/lang/String;

.field private oemName:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private roleInstance:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private screenResolution:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private vmName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Device;->InitializeFields()V

    .line 99
    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method public addToHashMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 333
    const-string/jumbo v0, "ai.device.id"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->id:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->ip:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 336
    const-string/jumbo v0, "ai.device.ip"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->ip:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_1
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->language:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 339
    const-string/jumbo v0, "ai.device.language"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->language:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_2
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->locale:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 342
    const-string/jumbo v0, "ai.device.locale"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->locale:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_3
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->model:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 345
    const-string/jumbo v0, "ai.device.model"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->model:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_4
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->network:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 348
    const-string/jumbo v0, "ai.device.network"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->network:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_5
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->networkName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 351
    const-string/jumbo v0, "ai.device.networkName"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->networkName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_6
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->oemName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 354
    const-string/jumbo v0, "ai.device.oemName"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->oemName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_7
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->os:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 357
    const-string/jumbo v0, "ai.device.os"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->os:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_8
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->osVersion:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 360
    const-string/jumbo v0, "ai.device.osVersion"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->osVersion:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_9
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleInstance:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 363
    const-string/jumbo v0, "ai.device.roleInstance"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleInstance:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_a
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleName:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 366
    const-string/jumbo v0, "ai.device.roleName"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_b
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->screenResolution:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 369
    const-string/jumbo v0, "ai.device.screenResolution"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->screenResolution:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_c
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->type:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 372
    const-string/jumbo v0, "ai.device.type"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->type:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_d
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->machineName:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 375
    const-string/jumbo v0, "ai.device.machineName"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->machineName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_e
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->vmName:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 378
    const-string/jumbo v0, "ai.device.vmName"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->vmName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_f
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getMachineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->machineName:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->network:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->networkName:Ljava/lang/String;

    return-object v0
.end method

.method public getOemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->oemName:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleInstance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleInstance:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->screenResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->vmName:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    if-nez p1, :cond_0

    .line 391
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "writer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 395
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    .line 396
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 397
    return-void
.end method

.method protected serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    const-string/jumbo v0, ""

    .line 406
    .local v0, "prefix":Ljava/lang/String;
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.id\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->id:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 409
    const-string/jumbo v0, ","

    .line 412
    :cond_0
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->ip:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.ip\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->ip:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 415
    const-string/jumbo v0, ","

    .line 418
    :cond_1
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->language:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.language\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->language:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 421
    const-string/jumbo v0, ","

    .line 424
    :cond_2
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->locale:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.locale\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->locale:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 427
    const-string/jumbo v0, ","

    .line 430
    :cond_3
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->model:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.model\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->model:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 433
    const-string/jumbo v0, ","

    .line 436
    :cond_4
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->network:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.network\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->network:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 439
    const-string/jumbo v0, ","

    .line 442
    :cond_5
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->networkName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.networkName\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->networkName:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 445
    const-string/jumbo v0, ","

    .line 448
    :cond_6
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->oemName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.oemName\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->oemName:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 451
    const-string/jumbo v0, ","

    .line 454
    :cond_7
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->os:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.os\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->os:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 457
    const-string/jumbo v0, ","

    .line 460
    :cond_8
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->osVersion:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.osVersion\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->osVersion:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 463
    const-string/jumbo v0, ","

    .line 466
    :cond_9
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleInstance:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.roleInstance\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleInstance:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 469
    const-string/jumbo v0, ","

    .line 472
    :cond_a
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleName:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.roleName\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleName:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 475
    const-string/jumbo v0, ","

    .line 478
    :cond_b
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->screenResolution:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.screenResolution\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->screenResolution:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 481
    const-string/jumbo v0, ","

    .line 484
    :cond_c
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->type:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.type\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->type:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 487
    const-string/jumbo v0, ","

    .line 490
    :cond_d
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->machineName:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.machineName\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->machineName:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 493
    const-string/jumbo v0, ","

    .line 496
    :cond_e
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->vmName:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.vmName\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->vmName:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 499
    const-string/jumbo v0, ","

    .line 502
    :cond_f
    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->id:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->ip:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->language:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->locale:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setMachineName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 308
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->machineName:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->model:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setNetwork(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->network:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setNetworkName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->networkName:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setOemName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->oemName:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->os:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->osVersion:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setRoleInstance(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleInstance:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleName:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setScreenResolution(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 280
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->screenResolution:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->type:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setVmName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 322
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->vmName:Ljava/lang/String;

    .line 323
    return-void
.end method
