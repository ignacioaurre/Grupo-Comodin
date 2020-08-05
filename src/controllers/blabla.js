async function (req, res) {
    let errors = validationResult(req)
    let sessionUserId = req.session.userId
    console.log(req.body.password);
    const userViejo = await DB.User.findOne({
            where: {id: req.session.userId}
        })
    if (errors.isEmpty()){ 
        if (!req.body.password) {
            await DB.User.update(
                {...req.body,
                password: userViejo.password},
                {where: {id: req.session.userId}}
            )
            }
        else {
            await DB.User.update(
                {...req.body,
                    password: bcrypt.hashSync(req.body.password)},
                {where: {id: req.session.userId}}
            )
        }
        if (req.files[0].filename){
            await DB.User.update({
            avatar: req.files[0].filename},
            {where: {id: req.session.userId}})
        const users = await DB.User.findOne({
        where: {id: req.session.userId}
        })
            res.render('perfil', {users, sessionUserId})
        }
    const users = await DB.User.findOne({
        where: {id: req.session.userId}
        })
        res.render('perfil', {users, sessionUserId})
},




async function (req, res) {
    let errors = validationResult(req)
    let sessionUserId = req.session.userId
    console.log(req.body.password);
    const userViejo = await DB.User.findOne({
            where: {id: req.session.userId}
        })
    if (errors.isEmpty()){ 
        if (!req.body.password) {
            await DB.User.update(
                {...req.body,
                password: userViejo.password},
                {
                where: {id: req.session.userId}}
            )
            const users = await DB.User.findOne({
                where: {id: req.session.userId}
            })
            res.render('perfil',{users, sessionUserId})
            }
        else {
            await DB.User.update(
                {...req.body,
                    password: bcrypt.hashSync(req.body.password)},
                   {
                    where: {id: req.session.userId}}
            )
            const users = await DB.User.findOne({
                where: {id: req.session.userId}
            })
            res.render('perfil', {users, sessionUserId})
            }
        }
        if (req.files[0].filename){
            await DB.User.update({
            avatar: req.files[0].filename},
            {where: {id: req.session.userId}})
        const users = await DB.User.findOne({
        where: {id: req.session.userId}
        })
            res.render('perfil', {users, sessionUserId})
        }
    else {
        res.render('perfil', {users, errors: errors.errors, sessionUserId})
    }
},